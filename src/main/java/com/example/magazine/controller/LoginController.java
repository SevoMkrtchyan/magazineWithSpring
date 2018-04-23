package com.example.magazine.controller;

import com.example.magazine.jwt.JwtTokenUtil;
import com.example.magazine.mail.EmailServiceImpl;
import com.example.magazine.model.User;
import com.example.magazine.model.UserType;
import com.example.magazine.repository.UserRepository;
import com.example.magazine.security.CurrentUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpRequest;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.text.MessageFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Random;

@Controller
public class LoginController {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private File imageUploadPath;
    @Autowired
    private JwtTokenUtil jwtTokenUtil;
    @Autowired
    private EmailServiceImpl emailService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage(ModelMap map, @RequestParam(value = "message", required = false) String message, @RequestParam(value = "logErr", required = false) String logErr,
                            @AuthenticationPrincipal UserDetails userDetails, @RequestParam(value = "errorMessage", required = false) String errorMessage,
                            @RequestParam(value = "mailFormatErr", required = false) String mailFormatErr) {
        if (userDetails != null) {
            User user = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user);
        }
        if (errorMessage != null) {
            map.addAttribute("errorMessage", errorMessage);
        }
        if (mailFormatErr != null) {
            map.addAttribute("mailFormatErr", mailFormatErr);
        }
        if (logErr != null) {
            map.addAttribute("logErr", logErr);
        }
        map.addAttribute("user", new User());
        map.addAttribute("registerError", message);
        return "login";
    }

    @PostMapping("/register")
    public String saveUser(@Valid @ModelAttribute("user") User user, BindingResult result,
                           @RequestParam("repassword") String rerassword, @RequestParam("userImg") MultipartFile multipartFile) throws IOException, MessagingException {
        List<String> mailFormat = Arrays.asList("mail.ru", "gmail.com", "inbox.ru", "list.ru", "bk.ru", "yandex.ru");
        String[] format = user.getEmail().split("@");
        if (!mailFormat.contains(format[1])) {
            return "redirect:/login?mailFormatErr=" + "Your Email is Incorrect Please Input Correct Email";
        }
        if (userRepository.findOneByEmail(user.getEmail()) != null) {
            return "redirect:/login?message=User by Email is exist";
        }
        StringBuilder sb = new StringBuilder();
        if (result.hasErrors()) {
            for (ObjectError objectError : result.getAllErrors()) {
                sb.append(objectError.getDefaultMessage() + "<br>");
            }
            return "redirect:/login?errorMessage=" + sb.toString();
        }
        String picName = System.currentTimeMillis() + "_" + multipartFile.getOriginalFilename();
//        File file = new File(imageUploadPath+"//" + user.getEmail() + "//");
//        if (!file.isDirectory()) {
//            file.mkdir();
//        }
        File pic = new File(imageUploadPath + "//" + picName);
        multipartFile.transferTo(pic);
        user.setPicUrl(picName);
        user.setUserType(UserType.USER);
        if (user.getPassword().equals(rerassword)) {
            user.setPassword(passwordEncoder.encode(user.getPassword()));
        } else {
            return "redirect:/login?/message= RePassword Can not Be Null Or Invalid";
        }
        user.setVerify(false);
        String token = jwtTokenUtil.generateToken(new CurrentUser(user));
        String message = String.format("Hi %s, You are successfully registered to our cool Magazine. " +
                        "Please  \"http://localhost:8080/verify?token=%s Verify" + " your account for Activate",
                user.getName(), token);
        emailService.sendSimpleMessage(user.getEmail(), "Welcome", message);
        userRepository.save(user);
        return "redirect:/home";
    }

    @RequestMapping(value = "/loginSuccess", method = RequestMethod.GET)
    public String loginSuccess() {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal.getUser().getUserType() == UserType.ADMIN) {
            return "redirect:/admin";
        }
        if (principal.getUser().getUserType() == UserType.USER) {

            return "redirect:/home";
        }
        return "index";
    }

    @GetMapping("/verify")
    public String verifyUser(@RequestParam("token") String token) {
        String email = jwtTokenUtil.getUsernameFromToken(token);
        User oneByEmail = userRepository.findOneByEmail(email);
        if (oneByEmail != null) {
            oneByEmail.setVerify(true);
            userRepository.save(oneByEmail);
            return "redirect:/login";
        }
        return "redirect:/verifyErr?message=This Account is Not A Verified";
    }

    @GetMapping("/verifyErr")
    public String verifyErrorPage(ModelMap map, @RequestParam("message") String message
            , @AuthenticationPrincipal UserDetails userDetails) {
        if (userDetails != null) {
            User user = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user);
        }
        map.addAttribute("message", message);
        return "loginErr";
    }

    @GetMapping("/passwordRecovery")
    public String recoveryPage() {
        return "passRec";
    }

    @PostMapping("/passRec")
    public String getPassword(@RequestParam("email") String email, ModelMap map, @AuthenticationPrincipal UserDetails userDetails) {
        User user = userRepository.findOneByEmail(email);
        if (userDetails != null) {
            User user1 = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user1);
        }
        if (user != null) {
            Random random = new Random();
            int i = random.nextInt(900000);
            user.setRecCode(String.valueOf(i));
            user.setRecCodeDate(new Date());
            userRepository.save(user);
            String message = String.format("Hi %s, Your code from Recovery Password %s" +
                            " Please  Input code to Recovery Password ",
                    user.getName(), i, user.getEmail());
            emailService.sendSimpleMessage(user.getEmail(), "Welcome", message);
            map.addAttribute("user", user);
            return "password";
        }
        map.addAttribute("message", "This Email Is Incorrect");
        return "passRec";
    }


    @PostMapping("/rec")
    public String rec(@RequestParam("userId") int id, @RequestParam("code") String code, ModelMap map
            , @AuthenticationPrincipal UserDetails userDetails) {
        User one = userRepository.findOne(id);
        if (userDetails != null) {
            User user = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user);
        }
        if (one != null && one.getRecCode().equals(code)) {
            one.setRecCode(null);
            one.setRecCodeDate(null);
            userRepository.save(one);
            map.addAttribute("user", one);
            return "recovered";
        }
        map.addAttribute("message", "Code Is Empty Or Invalid");
        map.addAttribute("user", one);
        return "password";
    }

    @PostMapping("/succes")
    public String succes(ModelMap map, @RequestParam("passwordR") String password, @RequestParam("RpasswordR") String rePassword
            , @AuthenticationPrincipal UserDetails userDetails, @RequestParam("userId") int id) {
        User one = userRepository.findOne(id);
        if (one != null && password.equals(rePassword)) {
            one.setPassword(passwordEncoder.encode(password));
            userRepository.save(one);
            return "redirect:/login";
        }
        if (userDetails != null) {
            User user = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user);
        }
        map.addAttribute("message", "RePassword Is Empty or Invalid");
        map.addAttribute("user", one);
        return "recovered";
    }

    @GetMapping("/account")
    public String getPage(ModelMap map, @AuthenticationPrincipal UserDetails userDetails) {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = principal.getUser();
        map.addAttribute("user", user);
        if (userDetails != null) {
            User user1 = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user1);
        }
        return "passRecovery";
    }

    @PostMapping("/successfully")
    public String recoveryPassByOldPass(ModelMap map, @RequestParam("passwordR") String password, @RequestParam("oldPass") String pass
            , @RequestParam("RpasswordR") String rePassword, @RequestParam("userId") int id, @AuthenticationPrincipal UserDetails userDetails) {
        User user = userRepository.findOne(id);
        if (userDetails != null) {
            User user1 = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user1);
        }
        if (user != null) {
            boolean isPassword = passwordEncoder.matches(pass, user.getPassword());
            if (isPassword) {
                if (password.equals(rePassword)) {
                    user.setPassword(passwordEncoder.encode(password));
                    userRepository.save(user);
                    return "redirect:/home";
                }
                map.addAttribute("message", "RePassword Can Not Be Null Or Incorrect");
                map.addAttribute("user", user);
                return "passRecovery";
            }
            map.addAttribute("message", "Old Password Incorrect Or Empty");
            map.addAttribute("user", user);
            return "passRecovery";
        }
        return "redirect:/home";
    }
}
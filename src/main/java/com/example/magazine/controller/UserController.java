package com.example.magazine.controller;

import com.example.magazine.model.Goods;
import com.example.magazine.model.User;
import com.example.magazine.repository.GoodsRepository;
import com.example.magazine.repository.UserRepository;
import com.example.magazine.security.CurrentUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;
import java.io.File;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private GoodsRepository goodsRepository;
    @Value("${worldmusic.product.upload.path}")
    private String imageUploadPath;

    @GetMapping("/prof")
    public String userPage(ModelMap map, @RequestParam("userId") int id) {
        User user = userRepository.findOne(id);
        map.addAttribute("user", user);
        return "profile";
    }

    @PostMapping("/sUSData")
    public String setUserData(@RequestParam("userId") int id, @RequestParam("name") String name, @RequestParam("surname") String surname,
                              @RequestParam("email") String email, @RequestParam("userImg") MultipartFile multipartFile) throws IOException {
        User user = userRepository.findOne(id);
        if (user != null) {
            if (!name.equals("")) {
                user.setName(name);
            }
            if (!surname.equals("")) {
                user.setSurname(surname);
            }
            if (!email.equals("")) {
                user.setEmail(email);
            }
            if (!multipartFile.getOriginalFilename().equals("")) {
                String picUrl = user.getPicUrl();
                File dFile = new File(imageUploadPath + picUrl);
                dFile.delete();
                String picName = System.currentTimeMillis() + "_" + multipartFile.getOriginalFilename();
                File file = new File(imageUploadPath + picName);
                multipartFile.transferTo(file);
                user.setPicUrl(picName);
            }
            userRepository.save(user);
        }
        return "redirect:/prof?userId=" + id;
    }

}
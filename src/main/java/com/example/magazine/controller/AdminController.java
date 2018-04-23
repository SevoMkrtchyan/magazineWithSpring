package com.example.magazine.controller;

import com.example.magazine.mail.EmailServiceImpl;
import com.example.magazine.model.*;
import com.example.magazine.repository.*;
import com.example.magazine.security.CurrentUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

@Controller
public class AdminController {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private GoodsRepository goodsRepository;
    @Autowired
    private CategoryRepository categoryRepository;
    @Autowired
    private PictureRepository pictureRepository;
    @Autowired
    private EmailServiceImpl emailService;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Value("${worldmusic.product.upload.path}")
    private String imageUploadPath;

    @GetMapping("/admin")
    public String postPage(ModelMap map) {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        map.addAttribute("currentUser", principal);
        map.addAttribute("allUsers", userRepository.findAll());
        map.addAttribute("allGoods", goodsRepository.findAll());
        map.addAttribute("allCategories", categoryRepository.findAll());
        map.addAttribute("category", new Category());
        map.addAttribute("goods", new Goods());
        return "admin";
    }

    @PostMapping("/addCategory")
    public String addCategory(@ModelAttribute("category") Category category,
                              @RequestParam("catImg") List<MultipartFile> multipartFiles) throws IOException {
        for (MultipartFile multipartFile : multipartFiles) {
            String picture = System.currentTimeMillis() + multipartFile.getOriginalFilename();
            File file = new File(imageUploadPath + picture);
            multipartFile.transferTo(file);
            category.getPictures().add(pictureRepository.save(new Picture(picture)));
        }
        categoryRepository.save(category);
        return "redirect:/admin";
    }

    @PostMapping("/addGood")
    public String addGood(@ModelAttribute("goods") Goods goods, @RequestParam("price") double price, @RequestParam("goodImg") List<MultipartFile> multipartFiles) throws IOException {
        for (MultipartFile multipartFile : multipartFiles) {
            String picture = System.currentTimeMillis() + multipartFile.getOriginalFilename();
            File file = new File(imageUploadPath + picture);
            multipartFile.transferTo(file);
            goods.getPictures().add(pictureRepository.save(new Picture(picture)));
        }
        goods.setPrice(price);
        goodsRepository.save(goods);
        return "redirect:/admin";
    }


}
package com.example.magazine.controller;

import com.codahale.metrics.annotation.Timed;
import com.example.magazine.model.Category;
import com.example.magazine.model.Goods;
import com.example.magazine.model.User;
import com.example.magazine.repository.CategoryRepository;
import com.example.magazine.repository.GoodsRepository;
import com.example.magazine.repository.UserRepository;
import com.example.magazine.security.CurrentUser;
import com.fasterxml.jackson.databind.ser.std.UUIDSerializer;
import com.sun.tracing.dtrace.ModuleAttributes;
import lombok.Synchronized;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.hibernate.Session;
import org.json.HTTP;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.web.ServerProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.*;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.Principal;
import java.util.*;

@Controller
@SessionAttributes("favoriteList")
@EnableScheduling
public class MainController {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private CategoryRepository categoryRepository;
    @Autowired
    private GoodsRepository goodsRepository;
    @Value("${worldmusic.product.upload.path}")
    private String imageUploadPath;

    @GetMapping("/home")
    public String mainPage(ModelMap map, @AuthenticationPrincipal UserDetails userDetails, HttpServletRequest request) {
        List<Goods> goods = goodsRepository.findAll();
        List<Integer> integerList = new LinkedList<>();
        map.addAttribute("users", userRepository.findAll());
        map.addAttribute("user", new User());
        map.addAttribute("allProducts", goods);
        map.addAttribute("allCategories", categoryRepository.findAll());
        map.addAttribute("favoriteList", integerList);
        if (userDetails != null) {
            User user = ((CurrentUser) userDetails).getUser();
            request.getSession().setAttribute("curUser", user);
            map.addAttribute("currentUser", user);
        }
        return "index";
    }

    @Scheduled(fixedDelay = 300000)
    public void deleteRecCode() {
        List<User> users = userRepository.findAll();
        Date date = new Date();
        if (users != null) {
            for (User user : users) {
                if (user.getRecCode() != null) {
                    if (date.getTime() - user.getRecCodeDate().getTime() > 3000000) {
                        user.setRecCode(null);
                        user.setRecCodeDate(null);
                        userRepository.save(user);
                    }
                }
            }
        }
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String main() {
        return "redirect:/home";
    }

    @RequestMapping(value = "/image", method = RequestMethod.GET)
    public void getImageAsByteArray(HttpServletResponse response, @RequestParam("fileName") String fileName) throws IOException {
        InputStream in = new FileInputStream(imageUploadPath + fileName);
        response.setContentType(MediaType.ALL_VALUE);
        IOUtils.copy(in, response.getOutputStream());
    }

    @GetMapping("/404")
    public String error404(ModelMap map, @AuthenticationPrincipal UserDetails userDetails) {
        if (userDetails != null) {
            User user = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user);
        }
        return "404";
    }

    @GetMapping("/aboutUs")
    public String aboutUsPage(ModelMap map, @AuthenticationPrincipal UserDetails userDetails) {
        if (userDetails != null) {
            User user = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user);
        }
        return "aboutUs";
    }

    @GetMapping("/loginErr")
    public String loginErr() {
        return "redirect:/login?logErr=Email or Password  invalid,Please input your correct data";
    }

    @GetMapping("/shCategories")
    public String shopCategories(ModelMap map, @AuthenticationPrincipal UserDetails userDetails) {
        List<Category> categories = categoryRepository.findAll();
        Map<Category, List<Goods>> categoryListMap = new HashMap<>();
        for (Category category : categories) {
            List<Goods> allByCategories = goodsRepository.findAllByCategories(category);
            categoryListMap.put(category, allByCategories);
        }
        if (userDetails != null) {
            User user = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user);
        }

        map.addAttribute("categoryListMap", categoryListMap);
        map.addAttribute("allCategories", categories);
        return "shCategories";
    }

    @GetMapping("/search")
    public String siteSearch(@RequestParam("site_search") String name, @AuthenticationPrincipal UserDetails userDetails, ModelMap map) {
        if (!name.equals("")) {
            if (userDetails != null) {
                User user = ((CurrentUser) userDetails).getUser();
                map.addAttribute("currentUser", user);
            }
            List<Category> allCategoriesByNameContains = categoryRepository.findAllCategoriesByNameContains(name);
            List<Goods> allGoodsByNameContains = goodsRepository.findAllGoodsByNameContains(name);
            if (allCategoriesByNameContains.size() > 0) {
                map.addAttribute("name", name);
                map.addAttribute("allCategoriesByNameContains", allCategoriesByNameContains);
            }
            if (allGoodsByNameContains.size() > 0) {
                map.addAttribute("name", name);
                map.addAttribute("allGoodsByNameContains", allGoodsByNameContains);
            }
            return "searchResults";
        }
        map.addAttribute("message", "No Results");
        map.addAttribute("name", name);
        return "searchResults";
    }

    @GetMapping("/pSingle")
    public String prodPage(@RequestParam(value = "pId") int id, ModelMap map, @AuthenticationPrincipal UserDetails userDetails) {
        Goods prod = goodsRepository.findOne(id);
        List<Goods> goods = goodsRepository.findAll();
        if (prod == null) {
            return "redirect:/";
        }
        if (userDetails != null) {
            User user = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user);
            for (Goods good : goods) {
                List<Integer> goodsByUserId = userRepository.findGoodsIdByUserId(user.getId());
                if (goodsByUserId != null) {
                    for (Integer integer : goodsByUserId) {
                        if (integer.equals(good.getId())) {
                            List<Goods> goodsList = new LinkedList<>();
                            goodsList.add(goodsRepository.findOne(good.getId()));
                            map.addAttribute("favoriteProduct", goodsList);
                        }
                    }
                }
            }
        }
        map.addAttribute("allProducts", goods);
        map.addAttribute("product", prod);
        return "pSingle";
    }

    @GetMapping("/shProducts")
    public String shProductsPage(ModelMap map, @AuthenticationPrincipal UserDetails userDetails) {
        List<Goods> products = goodsRepository.findAll();
        List<Category> categories = categoryRepository.findAll();
        Map<Category, List<Goods>> categoryListMap = new HashMap<>();
        for (Category category : categories) {
            List<Goods> allByCategories = goodsRepository.findAllByCategories(category);
            categoryListMap.put(category, allByCategories);
        }
        if (userDetails != null) {
            User user = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user);
        }
        map.addAttribute("allCategories", categories);
        map.addAttribute("categoryListMap", categoryListMap);
        map.addAttribute("products", products);
        return "shProducts";
    }

    @GetMapping("/sCategory")
    public String sCategoryPage(@RequestParam("id") int id, ModelMap map, @AuthenticationPrincipal UserDetails userDetails) {
        Category sCategory = categoryRepository.findOne(id);
        List<Category> categories = categoryRepository.findAll();
        Map<Category, List<Goods>> categoryListMap = new HashMap<>();
        for (Category category : categories) {
            List<Goods> allByCategories = goodsRepository.findAllByCategories(category);
            categoryListMap.put(category, allByCategories);
        }
        if (userDetails != null) {
            User user = ((CurrentUser) userDetails).getUser();
            map.addAttribute("currentUser", user);
        }
        map.addAttribute("allCategories", categories);
        map.addAttribute("categoryListMap", categoryListMap);
        map.addAttribute("sCategory", sCategory);
        map.addAttribute("prodByCategoryId", goodsRepository.findAllByCategories(sCategory));
        return "sCategory";
    }


    @RequestMapping(value = "/favoriteAjax", method = RequestMethod.GET)
    public void favoriteAjax(HttpServletRequest request) {
        List<Goods> goods = goodsRepository.findAll();
//        ModelAndView map = new ModelAndView();
//        map.addObject("allProducts", goods);
//        map.addObject("productId",request.getSession().getAttribute("favoriteList"));
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.getPrincipal() != null && authentication.getPrincipal() instanceof CurrentUser) {
            CurrentUser principal = (CurrentUser) authentication.getPrincipal();
            User currenUser = principal.getUser();
//            map.addObject("currentUser", currenUser);
            for (Goods good : goods) {
                List<Integer> goodsByUserId = userRepository.findGoodsIdByUserId(currenUser.getId());
                if (goodsByUserId != null) {
                    for (Integer integer : goodsByUserId) {
                        if (integer.equals(good.getId())) {
//                            List<Goods> goodsList = new LinkedList<>();
//                            goodsList.add(goodsRepository.findOne(good.getId()));
                            List<Integer> userFav = new LinkedList<>();
                            userFav.add(integer);
                            request.getSession().setAttribute("favoriteProduct", userFav);
//                            map.addObject("favoriteProduct", userFav);
                        }
                    }
                }
            }
        }
    }

    //    @GetMapping("/addFavorite")
//    public ModelAndView addFavoriteMovie(@RequestParam("userId") int userId, @RequestParam("prodId") int prodId) {
//        ModelAndView modelAndView = new ModelAndView();
//        User one = userRepository.findOne(userId);
//        boolean contains = one.getProducts().contains(goodsRepository.findOne(prodId));
//        if (!contains) {
//            userRepository.addWishList(userId, prodId);
//            modelAndView.addObject("isProd", 1);
//        }
//        return modelAndView;
//    }
    @Timed
    @RequestMapping(value = "/addFavorite", method = RequestMethod.POST)
    public void prodFavorite(@RequestBody int productId) {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = principal.getUser();
        User one = userRepository.findOne(user.getId());
        boolean contains = one.getProducts().contains(goodsRepository.findOne(productId));
        if (!contains) {
            userRepository.addWishList(one.getId(), productId);
        } else {
            userRepository.deleteFromWishList(one.getId(), productId);
        }
    }

//    @Scheduled(cron = "*/5 * * * * *")
//    public void productFavorite() {
//        ModelAndView modelAndView = new ModelAndView();
//        if (SecurityContextHolder.getContext() != null) {
//            if (SecurityContextHolder.getContext().getAuthentication().isAuthenticated()) {
//                Principal principal = (Principal) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//                if (principal != null && principal instanceof CurrentUser) {
//                    List<Goods> goods = goodsRepository.findAll();
//                            User user = ((CurrentUser) principal).getUser();
//                            for (Goods good : goods) {
//                                List<Integer> goodsByUserId = userRepository.findGoodsIdByUserId(user.getId());
//                                if (goodsByUserId != null) {
//                                    for (Integer integer : goodsByUserId) {
//                                        if (integer.equals(good.getId())) {
//                                            List<Goods> goodsList = new LinkedList<>();
//                                            goodsList.add(goodsRepository.findOne(good.getId()));
//                                            modelAndView.addObject("favoriteProduct", goodsList);
//                                        }
//                                    }
//                        }
//                    }
//                }
//            }
//        }
//
//    }
}
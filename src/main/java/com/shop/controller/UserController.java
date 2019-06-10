package com.shop.controller;

import com.shop.model.User;
import com.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/login")
    public String login(@RequestParam String email, @RequestParam String password,
                        RedirectAttributes rd, HttpSession session) {
        User user = userService.login(email, password);
        System.out.println(user.toString());
        if(user == null) {
            rd.addFlashAttribute("message", "Sai thông tin đăng nhập");
            return "redirect:/user/login";
        }
        session.setAttribute("user", user);
        return "redirect:/";
    }

    @GetMapping("/checkEmail")
    @ResponseBody
    public boolean checkEmail(@RequestParam String email) {
        System.out.println(email);
        if (userService.findByEmail(email) == null) {
            return true;
        }
        return false;
    }

    @PostMapping("/register")
    public String register(User user, RedirectAttributes rd) {
        user.setCreated(new Date());
        userService.addUser(user);
        rd.addFlashAttribute("message", "Đăng ký thành công!");
        return "redirect:/user/login";
    }
}

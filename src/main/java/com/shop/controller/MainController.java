package com.shop.controller;

import com.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MainController {

    @Autowired
    ProductService productService;

    @RequestMapping("/")
    public String main() {
        System.out.println(productService.getAll().size());
        return "index";
    }
}

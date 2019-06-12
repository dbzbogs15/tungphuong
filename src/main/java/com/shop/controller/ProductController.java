package com.shop.controller;

import com.shop.model.Product;
import com.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {
    @Autowired
    ProductService productService;

    @GetMapping("/all")
    @ResponseBody
    public List<Product> products(@RequestParam int maxSize) {
        return productService.getAll(maxSize);
    }
    @GetMapping("/details")
    public String details(@RequestParam Integer id, ModelMap modelMap) {
        modelMap.addAttribute("product", productService.getProduct(id));
        return "product_detail";
    }

    @GetMapping("/search")
    @ResponseBody
    public List<Product> search(@RequestParam String name) {
        return productService.getProductByName(name);
    }
}

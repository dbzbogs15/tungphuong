package com.shop.controller;

import com.shop.model.Cart;
import com.shop.model.Item;
import com.shop.model.Product;
import com.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    ProductService productService;

    @GetMapping("/add")
    @ResponseBody
    public Cart cart(@RequestParam Integer quantity, @RequestParam Integer productId, HttpSession session) {
        Product product = productService.getProduct(productId);
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            cart.addItem(product, quantity);
        } else {
            cart.addItem(product, quantity);
        }
        cart.setTotalPrice(cart.totalPrice());
        session.setAttribute("cart", cart);
        return cart;
    }

    @PostMapping("/index")
    @ResponseBody
    public Cart cart(@SessionAttribute(required = false) Cart cart) {
        int totalPrice = cart.totalPrice();
        cart.setTotalPrice(totalPrice);
        return cart;
    }

    @GetMapping("/index")
    public String index(ModelMap mm, @SessionAttribute(required = false) Cart cart) {
        mm.addAttribute("cart", cart);
        return "cart";
    }

    @DeleteMapping("/{productId}")
    @ResponseBody
    public boolean delete(@PathVariable int productId, HttpSession session) {
        Cart cart = (Cart) session.getAttribute("cart");
        int index = cart.exists(productId);
        try {
            List<Item> items = cart.getItemList();
            items.remove(index);
            cart.setItemList(items);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;

    }
}

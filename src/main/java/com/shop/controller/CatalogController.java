package com.shop.controller;

import com.shop.model.Catalog;
import com.shop.service.CatalogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/catalog")
public class CatalogController {
    @Autowired
    CatalogService catalogService;

    @GetMapping("/all")
    @ResponseBody
    public List<Catalog> all() {
        return catalogService.getAll();
    }
}

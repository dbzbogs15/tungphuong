package com.shop.dao;

import com.shop.model.Product;

import java.util.List;

public interface ProductDAO {
    List<Product> getAll();
    Product getProduct(Integer id);
}

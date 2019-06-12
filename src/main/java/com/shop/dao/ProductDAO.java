package com.shop.dao;

import com.shop.model.Product;

import java.util.List;

public interface ProductDAO {
    List<Product> getAll(int pageSize);
    Product getProduct(Integer id);
    List<Product> getProductByName(String name);
}

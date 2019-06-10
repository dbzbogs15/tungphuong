package com.shop.service;

import com.shop.dao.ProductDAO;
import com.shop.model.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService implements ProductDAO {
    @Autowired
    SessionFactory sessionFactory;

    public List<Product> getAll() {
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        List<Product> productList = session.createQuery("from Product", Product.class).getResultList();
        session.getTransaction().commit();
        session.close();
        return productList;
    }

    public Product getProduct(Integer id) {
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        Product product = session.createQuery("from Product where id= " +id, Product.class).getSingleResult();
        session.getTransaction().commit();
        session.close();
        return product;
    }
}

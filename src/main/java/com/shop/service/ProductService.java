package com.shop.service;

import com.shop.dao.ProductDAO;
import com.shop.model.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService implements ProductDAO {
    @Autowired
    SessionFactory sessionFactory;

    public List<Product> getAll(int pageSize) {
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        Query query = session.createQuery("from Product order by created asc ", Product.class);
        query.setFirstResult(0);
        query.setMaxResults(pageSize);
        List<Product> list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }

    public Product getProduct(Integer id) {
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        Product product = session.createQuery("from Product where id= " + id, Product.class).getSingleResult();
        session.getTransaction().commit();
        session.close();
        return product;
    }

    public List<Product> getProductByName(String name) {
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        String sql = "from Product where name like :name";
        Query query = session.createQuery(sql);
        query.setParameter("name", "%" + name +"%");
        List<Product> list = query.getResultList();
        session.getTransaction().commit();
        session.close();
        return list;
    }
}

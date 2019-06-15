package com.shop.service;

import com.shop.dao.CatalogDAO;
import com.shop.model.Catalog;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CatalogService implements CatalogDAO {
    @Autowired
    SessionFactory sessionFactory;
    public List<Catalog> getAll() {
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        String sql = "from Catalog";
        List<Catalog> catalogList = session.createQuery(sql, Catalog.class).getResultList();
        session.getTransaction().commit();
        session.close();
        return catalogList;
    }
}

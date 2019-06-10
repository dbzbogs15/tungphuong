package com.shop.service;

import com.shop.dao.UserDAO;
import com.shop.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService implements UserDAO {
    @Autowired
    SessionFactory sessionFactory;

    public List<User> getAllUser() {
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        List<User> userList = session.createQuery("from User", User.class).getResultList();
        session.getTransaction().commit();
        session.close();
        return userList;
    }

    public void addUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        session.persist(user);
        session.getTransaction().commit();
        session.close();
    }

    public User login(String email, String password) {
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        String sql = "from User where email=:email and password=:password";
        Query query = session.createQuery(sql);
        query.setParameter("email", email);
        query.setParameter("password", password);
        User user = (User) query.getSingleResult();
        session.getTransaction().commit();
        session.close();
        return user;
    }

    public User findByEmail(String email) {
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        User user = new User();
        String sql = "from User where email=:email";
        Query query = session.createQuery(sql);
        query.setParameter("email", email);
        try {
            user = (User) query.getSingleResult();
        } catch (Exception e) {
            user = null;
            session.getTransaction().commit();
            session.close();
        }
        return user;
    }
}

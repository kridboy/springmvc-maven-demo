package com.keisse.springdemo.dao;

import com.keisse.springdemo.entity.CustomerEntity;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public class CustomerDAOImpl implements CustomerDAO{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<CustomerEntity> getCustomers() {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<CustomerEntity> query = currentSession.createQuery("from CustomerEntity",CustomerEntity.class);
        return query.getResultList();
    }
}

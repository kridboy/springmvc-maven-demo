package com.keisse.springdemo.dao;

import com.keisse.springdemo.entity.CustomerEntity;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CustomerDAOImpl implements CustomerDAO {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<CustomerEntity> getCustomers() {
        var currentSession = sessionFactory.getCurrentSession();
        Query<CustomerEntity> query = currentSession.createQuery("from CustomerEntity order by lastName", CustomerEntity.class);
        return query.getResultList();
    }

    @Override
    public void saveCustomer(CustomerEntity customer) {
        var currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(customer);
    }

    @Override
    public CustomerEntity getCustomer(int id) {
        var currentSession = sessionFactory.getCurrentSession();
        return currentSession.get(CustomerEntity.class, id);
    }

    @Override
    public void deleteCustomer(int id) {
        var currentSession = sessionFactory.getCurrentSession();
        var query = currentSession.createQuery("delete from CustomerEntity where id=:customerId");
        query.setParameter("customerId",id);
        query.executeUpdate();
    }
}

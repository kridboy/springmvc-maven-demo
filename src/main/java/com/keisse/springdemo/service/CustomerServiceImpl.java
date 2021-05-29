package com.keisse.springdemo.service;

import com.keisse.springdemo.dao.CustomerDAO;
import com.keisse.springdemo.entity.CustomerEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerDAO customerDAO;

    @Override
    @Transactional
    public List<CustomerEntity> getCustomers() {
        return customerDAO.getCustomers();
    }

    @Override
    @Transactional
    public void saveCustomer(CustomerEntity customer) {
        customerDAO.saveCustomer(customer);
    }

    @Override
    @Transactional
    public CustomerEntity getCustomer(int id) {
        return customerDAO.getCustomer(id);
    }

    @Override
    @Transactional
    public void deleteCustomer(int id) {
        customerDAO.deleteCustomer(id);
    }
}

package com.keisse.springdemo.service;


import com.keisse.springdemo.entity.CustomerEntity;

import java.util.List;

public interface CustomerService {
    List<CustomerEntity> getCustomers();

    void saveCustomer(CustomerEntity customer);

    CustomerEntity getCustomer(int id);

    void  deleteCustomer(int id);
}

package com.keisse.springdemo.dao;

import com.keisse.springdemo.entity.CustomerEntity;

import java.util.List;

public interface CustomerDAO {
    List<CustomerEntity> getCustomers();
}

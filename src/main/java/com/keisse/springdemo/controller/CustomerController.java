package com.keisse.springdemo.controller;

import com.keisse.springdemo.dao.CustomerDAO;
import com.keisse.springdemo.entity.CustomerEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    @Autowired
    private CustomerDAO customerDAO;

    @RequestMapping("/list")
    public String listCustomer(Model model) {
        List<CustomerEntity> list = customerDAO.getCustomers();
        model.addAttribute("customers",list);
        return "list-customer";
    }
}

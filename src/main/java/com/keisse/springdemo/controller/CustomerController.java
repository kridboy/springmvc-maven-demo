package com.keisse.springdemo.controller;

import com.keisse.springdemo.entity.CustomerEntity;
import com.keisse.springdemo.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @GetMapping("/list")
    public String listCustomer(Model model) {
        List<CustomerEntity> list = customerService.getCustomers();
        model.addAttribute("customers", list);
        return "list-customer";
    }

    @GetMapping("/showFormAdd")
    public String showFormForAdd(Model model) {
        CustomerEntity customer = new CustomerEntity();
        model.addAttribute("customer", customer);
        return "customer-form";
    }

    @PostMapping("/save")
    public String saveCustomer(@ModelAttribute("customer") CustomerEntity customer) {
        customerService.saveCustomer(customer);
        return "redirect:/customer/list";
    }

    @GetMapping("/showFormUpdate")
    public String showFormForUpdate(@RequestParam("customerId") int id, Model model) {
        var customer = customerService.getCustomer(id);
        model.addAttribute("customer", customer);
        return "customer-form";
    }

    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam("customerId") int id) {
        customerService.deleteCustomer(id);
        return "redirect:/customer/list";
    }
}

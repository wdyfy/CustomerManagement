package main.service;

import main.commons.Page;
import main.dao.CustomerDao;
import main.dao.CustomerDaoImp1;
import main.domain.Customer;
import main.domain.PageBean;

public class CustomerService {
    CustomerDao customerDao = new CustomerDaoImp1();
    Page pageDao = new Page();

    public void addCustomer(Customer customer){
        customerDao.addCustomer(customer);
    }

    public void editCustomer(Customer customer){
        customerDao.editCustomer(customer);
    }

    public Customer findCustomerById(String id){
        return customerDao.findCustomerById(id);
    }

    public void deleteCustomerById(String id){
        customerDao.deleteCustomerById(id);
    }

    public PageBean<Customer> findAll(int pc, int pr){
        return pageDao.findAll(pc, pr);
    }

    public PageBean<Customer> query(Customer customer, int pc, int pr){
        return pageDao.query(customer, pc, pr);
    }
}

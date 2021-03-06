package main.dao;

import main.domain.Customer;

public interface CustomerDao {
    void addCustomer(Customer customer);

    Customer findCustomerById(String  id);

    void editCustomer(Customer customer);

    void deleteCustomerById(String id);
}

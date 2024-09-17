package com.app.controller;

import com.app.entity.Customer;
import org.hibernate.Session;
import com.app.db.HibernateUtil;
import org.hibernate.Transaction;

import java.util.List;

public class CustomerController {

    public boolean saveCustomer(Customer customer) {
        try (Session session = HibernateUtil.getSession()) {
            Transaction transaction = session.beginTransaction();
            session.save(customer);
            transaction.commit();
            System.out.println("Customer saved successfully");
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateCustomer(Customer customer) {
        try (Session session = HibernateUtil.getSession()) {
            Transaction transaction = session.beginTransaction();
            session.update(customer);
            transaction.commit();
            System.out.println("Customer updated successfully");
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean deleteCustomer(long id){
        try (Session session = HibernateUtil.getSession()) {
            Transaction transaction = session.beginTransaction();
            Customer selectedCustomer = session.get(Customer.class, id);

            if (selectedCustomer == null) return false;

            session.delete(selectedCustomer);
            transaction.commit();
        }

        return true;
    }

    public Customer findCustomer(long id) {

        try {
            Session session = HibernateUtil.getSession();
            Customer customer = session.get(Customer.class, id);
            return customer;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<Customer> findAllCustomers() {
        try {
            Session session = HibernateUtil.getSession();
            List<Customer> customers = session.createQuery("from Customer", Customer.class).list();
            return customers;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }


}

package com.application.dao;

import com.application.entity.Employee;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO{

    @Autowired
    SessionFactory sessionFactory;
    public List<Employee> getAllEmployees() {

        Session session = sessionFactory.getCurrentSession();

        Query<Employee> query = session.createQuery("from Employee",
                Employee.class);
        List<Employee> getAllEmployees = query.getResultList();

        return getAllEmployees;
    }

    @Override
    public void addNewEmployee(Employee employee) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(employee);
    }

    @Override
    public Employee getEmployee(int id) {

        Session session = sessionFactory.getCurrentSession();
        Employee employee = session.get(Employee.class, id);

        return employee;
    }

    @Override
    public void deleteEmployee(int id) {
        Session session = sessionFactory.getCurrentSession();
        Employee employee = session.get(Employee.class, id);
        session.delete(employee);
    }
}

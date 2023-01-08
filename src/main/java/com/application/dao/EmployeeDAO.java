package com.application.dao;

import com.application.entity.Employee;

import java.util.List;

public interface EmployeeDAO {
    public List<Employee> getAllEmployees();
    public void addNewEmployee(Employee employee);
    public Employee getEmployee(int id);
    public void deleteEmployee(int id);
}

package com.application.service;

import com.application.entity.Employee;

import java.util.List;

public interface EmployeeService {

    public List<Employee> getAllEmployees();
    public void addNewEmployee(Employee employee);
    public Employee getEmployee(int id);
    public void deleteEmployee(int id);
}

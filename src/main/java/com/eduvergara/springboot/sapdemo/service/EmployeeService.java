package com.eduvergara.springboot.sapdemo.service;

import java.util.List;

import com.eduvergara.springboot.sapdemo.entity.Employee;

public interface EmployeeService {

	List<Employee> findAll();
	
	Employee findById(int theId);
	
	void save(Employee theEmployee);
	
	void deleteById(int theId);
	
}

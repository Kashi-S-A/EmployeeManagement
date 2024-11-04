package com.ty.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ty.entity.Employee;
import com.ty.repository.EmployeeRepository;

@Service
public class EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;

	public String register(Employee employee) {
		Optional<Employee> opt = employeeRepository.findByEmail(employee.getEmail());

		if (opt.isPresent()) {
			return "employee with " + employee.getEmail() + " is already registered";
		} else {
			employeeRepository.save(employee);
			return "Registration is successfull";
		}
	}

	public boolean login(String email, String password) {
		Optional<Employee> opt = employeeRepository.findByEmail(email);
		if (opt.isPresent()) {
			Employee employee = opt.get();
			if (employee.getPassword().equals(password)) {
				return true;
			}
			return false;
		}
		return false;
	}
}

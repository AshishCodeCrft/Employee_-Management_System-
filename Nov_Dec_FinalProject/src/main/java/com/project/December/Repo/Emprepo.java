package com.project.December.Repo;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.project.December.Model.Employee;

@Repository
public interface Emprepo extends JpaRepository<Employee, Integer> {

	public Employee findByEmail(String email);
}

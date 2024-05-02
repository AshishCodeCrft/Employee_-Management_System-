package com.project.December.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.December.Model.Employee; // Assuming you have an Employee entity/model
import com.project.December.Repo.Emprepo;

@Controller
public class EmpController {
	
	@Autowired
	private Emprepo erepo;

	@GetMapping("/")
	public String Demo() {
		
		return "Register.jsp"; 
	}

	@PostMapping("/Registration")
	public String Registers(@ModelAttribute Employee employee,@RequestParam String name,@RequestParam String phone,@RequestParam String email,  @RequestParam String password,String cPassword) {
		erepo.save(employee); 
		System.out.println(name);
		System.out.println(phone);
		System.out.println(email);
		System.out.println(password);
		System.out.println(cPassword);
		
		return "login.jsp"; 
	}
	@GetMapping("/login")
	public String login(@RequestParam String email, @RequestParam String password)
	{
		System.out.println(email);
		System.out.println(password);
		
		Employee ob = erepo.findByEmail(email);
		
		if(ob!=null && ob.getEmail().equalsIgnoreCase(email) && ob.getPassword().equals(password))
		{
			return "welcome.jsp";	
		}
		else 
		{
			return "login.jsp";
		}
		
		
	}
	
}


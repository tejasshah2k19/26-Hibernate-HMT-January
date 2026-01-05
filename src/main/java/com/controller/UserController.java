package com.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.entity.UserEntity;
import com.repository.UserRepository;

@Controller
public class UserController {

	@Autowired
	UserRepository userRepository;
	
	@GetMapping(value = {"newUser","newuser"})
	public String newUser() {
		return "NewUser";
	}
	
	@PostMapping("saveUser")
	public String saveUser(UserEntity userEntity) {
		System.out.println(userEntity.getFirstName());
	
		//validation 
		
		//password encryption 
		
		//profile pic 
		
		userEntity.setCreatedAt(LocalDate.now());
		//db save 
		userRepository.save(userEntity); //insert 
		
		//welcome mail 
		
		return "Login";
	}
}

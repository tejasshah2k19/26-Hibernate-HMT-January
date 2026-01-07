package com.controller;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.entity.UserEntity;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.repository.UserRepository;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {

	@Autowired
	UserRepository userRepository;

	@GetMapping(value = { "newUser", "newuser" })
	public String newUser() {
		return "NewUser";
	}

	@PostMapping("saveUser")
	public String saveUser(UserEntity userEntity) {
		System.out.println(userEntity.getFirstName());

		// validation

		// password encryption

		// profile pic

		userEntity.setCreatedAt(LocalDate.now());
		// db save
		userRepository.save(userEntity); // insert

		// welcome mail

		return "Login";
	}

	@GetMapping("listUser")
	public String listUser(Model model) {
		// select * from users
		List<UserEntity> users = userRepository.findAll();
		model.addAttribute("users", users);
		return "ListUser";
	}

	@GetMapping("deleteUser")
	public String deleteUser(Integer userId) {
		//
		userRepository.deleteById(userId);
		return "redirect:/listUser";
	}

	@GetMapping("viewUser")
	public String viewUser(Integer userId,Model model) {
		Optional<UserEntity> op = userRepository.findById(userId); //
		if(op.isPresent()) {
			UserEntity user =  op.get(); 
			model.addAttribute("user",user);
		}else {
			//error -> 
		}
		
		return "ViewUser";
	}
	@GetMapping("editUser")
	public String editUser(Integer userId,Model model) {
		Optional<UserEntity> op = userRepository.findById(userId); //
		if(op.isPresent()) {
			UserEntity user =  op.get(); 
			model.addAttribute("user",user);
		}else {
			//error -> 
		}
		
		return "EditUser";
	}

	
	@PostMapping("updateUser")
	public String updateUser(UserEntity userEntity) {
		System.out.println(userEntity.getFirstName());

		userRepository.save(userEntity); // update

		return "Login";
	}

}

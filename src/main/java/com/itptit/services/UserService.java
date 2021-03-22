package com.itptit.services;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.HashSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.itptit.entities.Role;
import com.itptit.entities.User;
import com.itptit.respositories.RoleRepo;
import com.itptit.respositories.UserRepo;


@Service
public class UserService {
	private UserRepo userRepository;
	private RoleRepo roleRepository;
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Autowired
	public UserService(UserRepo userRepository, RoleRepo roleRepository,
			BCryptPasswordEncoder bCryptPasswordEncoder) {
		this.userRepository = userRepository;
		this.roleRepository = roleRepository;
		this.bCryptPasswordEncoder = bCryptPasswordEncoder;
	}
	
	public User findUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    public User findByUserName(String userName) {
        return userRepository.findByUserName(userName);
    }

    public User saveUser(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setStatus(true);
        Role userRole = roleRepository.findByName("USER");
        user.setRoles(new HashSet<Role>(Arrays.asList(userRole)));
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    	User user1 = (User) auth.getPrincipal();
    	int userId = user1.getId();
        if(user1.getId() == null)
		{
			LocalDateTime createdDate = LocalDateTime.now();
			user1.setCreatedDate(createdDate);
			user1.setCreatedBy(userId);
		}
		else {
			LocalDateTime createdDate = userRepository.getOne(user1.getId()).getCreatedDate();
			user1.setCreatedDate(createdDate);
			LocalDateTime updatedDate = LocalDateTime.now();
			user1.setUpdatedDate(updatedDate);
			user1.setUpdatedBy(userId);
		}
        return userRepository.save(user1);
    }
	
}

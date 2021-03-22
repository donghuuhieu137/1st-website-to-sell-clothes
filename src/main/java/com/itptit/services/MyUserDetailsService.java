package com.itptit.services;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.itptit.entities.Role;
import com.itptit.entities.User;



@Service
public class MyUserDetailsService implements UserDetailsService{

	@Autowired
	private UserService userService;
	
	@Transactional
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		User user = userService.findByUserName(userName);
		buildUserAuthorities(user);
		return buildUserForAuthentication(user);
	}
	
	private void buildUserAuthorities(User user)
	{
		Set<GrantedAuthority> roles = new HashSet<GrantedAuthority>();
		for (Role role : user.getRoles()) {
			roles.add(new SimpleGrantedAuthority(role.getName()));
		}
		user.setGrantedAuthorities(new ArrayList<>(roles));
	}
	
	private UserDetails buildUserForAuthentication(User user) {
        return user;
    }
	
}

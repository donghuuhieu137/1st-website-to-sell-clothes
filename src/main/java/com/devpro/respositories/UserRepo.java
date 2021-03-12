package com.devpro.respositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.devpro.entities.User;

public interface UserRepo extends JpaRepository<User, Integer>{
	User findByEmail(String email);
	User findByUserName(String userName);
}

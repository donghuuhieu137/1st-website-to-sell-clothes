package com.itptit.respositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.itptit.entities.User;

public interface UserRepo extends JpaRepository<User, Integer>{
	User findByEmail(String email);
	User findByUserName(String userName);
}

package com.javatechie.reg.service.api.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.javatechie.reg.service.api.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
	List<User> findByEmail(String email);
}

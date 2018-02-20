package com.wtf4j.webapp.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.wtf4j.webapp.Entity.User;


@Repository
public interface UserDao extends JpaRepository<User,Integer>{
	
	boolean existsByPasswordAndUsername(@Param("password") String password,
                                        @Param("username") String username);
	
	User findByPasswordAndUsername(@Param("password") String password,
			                       @Param("username") String username);

	User getById(int id);

}

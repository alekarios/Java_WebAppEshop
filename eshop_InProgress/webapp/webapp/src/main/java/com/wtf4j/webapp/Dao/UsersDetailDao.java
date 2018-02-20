package com.wtf4j.webapp.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wtf4j.webapp.Entity.UsersDetail;

@Repository
public interface UsersDetailDao extends JpaRepository<UsersDetail,Integer> {

}

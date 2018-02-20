package com.wtf4j.webapp.Service.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wtf4j.webapp.Dao.UserDao;
import com.wtf4j.webapp.Dao.UsersDetailDao;
import com.wtf4j.webapp.Entity.User;
import com.wtf4j.webapp.Entity.UsersDetail;
import com.wtf4j.webapp.Service.UserService;

import ch.qos.logback.core.net.SyslogOutputStream;


@Service
public class UserServiceImpl implements UserService  {
	
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	UsersDetailDao usesDetailDao;
	
	
	@Override
	@Transactional
	public void setUser(User user) {
		
		userDao.save(user);
		
	}


	@Override
	@Transactional
	public void setUserDetail(UsersDetail usersDetail) {
		
		usesDetailDao.save(usersDetail);
	}


	@Override
	@Transactional
	public boolean checkUser(String username, String password) {
		
		if(userDao.existsByPasswordAndUsername(password, username) == true) {
			
			return true;
		}
		else {
			return false;
		}

	}


	@Override
	@Transactional
	public int searchId(String username, String password) {

		return userDao.findByPasswordAndUsername(password, username).getId();

	}


	@Override
	public int searchFlag(String username, String password) {
		
		return userDao.findByPasswordAndUsername(password, username).getFlag();
	}

	@Override
	public User getById(int id) {
		return userDao.getById(id);
	}


}

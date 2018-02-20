package com.wtf4j.webapp.Service;

import java.util.List;

import com.wtf4j.webapp.Entity.User;
import com.wtf4j.webapp.Entity.UsersDetail;

public interface UserService {
	
	public void setUser(User user);
	
	public void setUserDetail(UsersDetail usersDetail);
	
	public boolean checkUser(String username, String password);
	
	public int searchId(String username, String password);
	
	public int searchFlag(String username,String password);

	User getById(int id);
}

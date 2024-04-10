package com.DAO;

import com.entity.User;

public interface UserDAO {
	public boolean UserRegister(User user);
	public User UserLogin(String email, String password);
}

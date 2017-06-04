package com.tedu.service;

import com.tedu.exception.MsgException;
import com.tedu.pojo.User;

import java.util.List;

/**
 * Created by LYJ on 2017/3/19.
 */
public interface UserService {
    public List<User> findAll();

	public void addUser(User user);

	public User findUserById(String uid);

	public void updateUser(User user);

	public void deleteUser(String uid);

	//添加新用户
	public void saveUser(User user) throws MsgException;
	//登录用户
	public User findUserByUsernameAndPassword(String userName,String password);
	//查找用户是否存在
	public User findUserByUserName(String userName);

	public List<User> findUserByRole(Integer upower);

	public void deleteUsers(String[] uids);
}

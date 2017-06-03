package com.tedu.service.impl;

import com.tedu.exception.MsgException;
import com.tedu.mapper.UserMapper;
import com.tedu.pojo.User;
import com.tedu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

/**
 * Created by LYJ on 2017/3/19.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> findAll() {
        return userMapper.findAll();
    }

	@Override
	public void addUser(User user) {
		userMapper.addUser(user);
		
	}

	@Override
	public User findUserById(String uid) {
		
		return userMapper.findUserById(uid);
	}

	@Override
	public void updateUser(User user) {
		
		userMapper.updateUser(user);
		
	}

	@Override
	public void deleteUser(String uid) {
		
		userMapper.deleteUser(uid);
		
	}

	@Override
	public void saveUser(User user) throws MsgException {
		//先判断用户名是否存在
		User user1=userMapper.findUserByUserName(user.getUname());
		if (user1!=null){
			throw new MsgException("用户名已存在");
		}
		user.setUid(UUID.randomUUID().toString());
		userMapper.saveUser(user);
	}

	@Override
	public User findUserByUsernameAndPassword(String userName, String password) {
		return userMapper.findUserByUsernameAndPassword(userName,password);
	}

	@Override
	public User findUserByUserName(String userName) {
		return userMapper.findUserByUserName(userName);
	}



	public List<User> findUserByRole(Integer upower){
		return userMapper.findUserByRole(upower);
	}


	//删除多个用户
	public void deleteUsers(String[] uids){
		for(String uid:uids){
			userMapper.deleteUser(uid);
		}
	}
}

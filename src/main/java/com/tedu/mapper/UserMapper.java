package com.tedu.mapper;

import com.tedu.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

/**
 * Created by LYJ on 2017/3/19.
 */
public interface UserMapper {
    //查询全部用户信息
    public List<User> findAll();

	public void addUser(User user);

	public User findUserById(String uid);

	public void updateUser(User user);

	public void deleteUser(String uid);

	//添加新用户
	public void saveUser(User user);
	//登录用户
	public User findUserByUsernameAndPassword(String userName,String password);
	//查找用户是否存在
	public User findUserByUserName(String userName);



	public List<User> findUserByRole(Integer upower);


}

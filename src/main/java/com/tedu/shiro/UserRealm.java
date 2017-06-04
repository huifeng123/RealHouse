package com.tedu.shiro;

import java.util.List;

import com.tedu.pojo.User;
import com.tedu.service.UserService;
import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;



public class UserRealm extends AuthorizingRealm {
	@Autowired
	private UserService userService;
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {
		/*User user=(User) SecurityUtils.getSubject().getPrincipal();
		List<String> moduleList=userService.findModuleListByUserId(user.getUserId());
		SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
		info.addStringPermissions(moduleList);
		return info;*/
		return null;
	}
	/**
	 * 
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		//将token进行格式转换
		UsernamePasswordToken loginToken=(UsernamePasswordToken) token;
		String userName=loginToken.getUsername();
		System.out.println(userName);
		User user=userService.findUserByUserName(userName);
		System.out.println(user);
		AuthenticationInfo info=new SimpleAuthenticationInfo(user,user.getUpassword(),this.getName());
		return info;
	}
	
}

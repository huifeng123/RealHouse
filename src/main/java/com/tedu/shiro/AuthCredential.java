package com.tedu.shiro;

import java.util.Arrays;

import com.tedu.utils.MD5Hash;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;



public class AuthCredential extends  SimpleCredentialsMatcher{
	
	@Override
	public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
		UsernamePasswordToken logintoken=(UsernamePasswordToken) token;
		String userName=logintoken.getUsername();
		char[] password=logintoken.getPassword();
		String md5Password= MD5Hash.getMd5HashPassword(String.valueOf(password), userName);
		logintoken.setPassword(md5Password.toCharArray());
		return super.doCredentialsMatch(logintoken, info);
	}
}

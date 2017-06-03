package com.tedu.utils;

import org.apache.shiro.crypto.hash.Md5Hash;

public class MD5Hash {
	public static void main(String[] args) {
		Md5Hash md5Hash=new Md5Hash("123", "赵子龙", 3);
		System.out.println(md5Hash.toString());
	}
	public static String getMd5HashPassword(String password,String userName){
		return new Md5Hash(password,userName,3).toString();
	}
}

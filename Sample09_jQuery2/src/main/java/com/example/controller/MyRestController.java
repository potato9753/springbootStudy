package com.example.controller;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.dto.User;

@RestController
public class MyRestController {

	@RequestMapping("/ajax")
	public String ajax() {
		return "helloWorld";  
	}
	
	@RequestMapping("/ajax2")
	public User ajax2() {
		return new User("홍길동","서울");  
	}
	
	@RequestMapping("/ajax3")
	public ArrayList<User> ajax3() {
		ArrayList<User> list = new ArrayList<User>();
		list.add(new User("홍길동1", "서울1"));
		list.add(new User("홍길동2", "서울2"));
		list.add(new User("홍길동3", "서울3"));
		return list;  
	}
}

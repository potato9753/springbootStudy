package com.example.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.dto.User;

@Controller
public class MainController {

	@RequestMapping("/")
	public String main() {
		return "happy"; // WEB-INF/views/world.jsp
	}
	
	@RequestMapping("/param")
	public @ResponseBody String param(@RequestParam String name,
			@RequestParam String address) {
		System.out.println(name+"\t"+address);
		return "happy"; // "happy"
	}
	
	@RequestMapping("/param2")
	public @ResponseBody String param2(User user) {
		System.out.println(user);
		return "happy"; // "happy"
	}
	
	@RequestMapping("/param3")
	public @ResponseBody String param3(@RequestBody ArrayList<String> list) {
		System.out.println(list);
		return "happy"; // "happy"
	}
}

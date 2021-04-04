package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/xyz")
	public String aaa() {
		return "main"; // WEB-INF/views/hello.jsp
	}
}

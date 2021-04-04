package com.example;

import java.util.List;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import com.example.service.DBOracleservice;

@SpringBootApplication
public class Sample01BasicApplication {

	public static void main(String[] args) {
		ApplicationContext ctx = SpringApplication.run(Sample01BasicApplication.class, args);
		DBOracleservice service = ctx.getBean("myService",DBOracleservice.class);
		
		List<String> list = service.list();
		System.out.println(list);
	}
	
}

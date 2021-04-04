package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import com.service.DBOracleservice;

@SpringBootApplication(scanBasePackages = "com.*")
public class Sample01BasicApplication {

	public static void main(String[] args) {
		ApplicationContext ctx = SpringApplication.run(Sample01BasicApplication.class, args);
		DBOracleservice service = ctx.getBean("myService",DBOracleservice.class);
		System.out.println(service.getMesg());
	}
	
}

package com.example.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.example.dao.DBOracleDAO;
import com.example.service.DBOracleservice;

@Configuration
public class JavaConfig {

	
	@Bean("myDao")
	public DBOracleDAO dao() {
		return new DBOracleDAO();
	}
	
	@Bean("myService")
	public DBOracleservice service() {
		return new DBOracleservice();
	}

}

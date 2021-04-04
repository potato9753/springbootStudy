package com.example.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.example.service.DBOracleservice;

@Configuration
public class JavaConfig {

	// 빈등록
	@Bean("myService")
	public DBOracleservice service() {
		return new DBOracleservice();
	}

}

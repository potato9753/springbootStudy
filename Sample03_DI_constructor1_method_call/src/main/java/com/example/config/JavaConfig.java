package com.example.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.example.dao.DBOracleDAO;
import com.example.service.DBOracleservice;

@Configuration
public class JavaConfig {

	
	//<bean id="myDao" class = "com.example.dao.DBOracleDAO/> 동일
	@Bean("myDao")
	public DBOracleDAO dao() {
		return new DBOracleDAO();
	}
	// 빈등록
	//<bean id="myService" class = "com.example.dao.DBOracleService>
	//	<constructor name="dao" ref = "myDao"/>
	//</bean>
	@Bean("myService")
	public DBOracleservice service() {
		return new DBOracleservice(dao());
	}

}

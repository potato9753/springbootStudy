package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.dao.DBOracleDAO;

public class DBOracleservice {

	@Autowired
	DBOracleDAO dao;
	
	public List<String> list(){
		return dao.list();
	}
	
	
}

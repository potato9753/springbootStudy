package com.example.service;

import java.util.List;

import com.example.dao.DBOracleDAO;

public class DBOracleservice {

	DBOracleDAO dao;
	
	//생성자 주입
	public DBOracleservice(DBOracleDAO dao) {
		System.out.println("DBOracleservice 생성자");
		this.dao = dao;
	}
	
	public List<String> list(){
		return dao.list();
	}
	
	
}

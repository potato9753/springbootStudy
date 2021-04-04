package com.example.service;

import java.util.List;

import com.example.dao.DBOracleDAO;

public class DBOracleservice {

	DBOracleDAO dao;
	
	//생성자 주입
	public DBOracleservice() {
		System.out.println("DBOracleservice 생성자");
	}
	//setter 메서드 주입
	public void setDao(DBOracleDAO dao) {
		this.dao = dao;
	}

	public List<String> list(){
		return dao.list();
	}
	
	
}

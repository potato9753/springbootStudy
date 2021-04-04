package com.example.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.DBDao;
import com.example.dto.Dept;

@Service("myService")
public class DBOracleService implements DBService {

	@Autowired
	DBDao dao;
	
	@Autowired
	SqlSessionTemplate session;
	
	@Override
	public List<Dept> selectAll() {
		return dao.selectAll(session);
	}

	@Override
	public Dept selectByDeptno(int deptno) {
		return dao.selectByDeptno(session, deptno);
	}

	@Override
	public int insert(Dept dept) {
		return dao.insert(session, dept);
	}

	@Override
	public int update(Dept dept) {
		// TODO Auto-generated method stub
		return dao.update(session, dept);
	}

	@Override
	public int deleteByDeptno(int deptno) {
		return dao.deleteByDeptno(session, deptno);
	}

}

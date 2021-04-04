package com.example.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.example.dto.Dept;

public interface DBDao {

	public abstract List<Dept> selectAll(SqlSessionTemplate session);
	public abstract Dept selectByDeptno(SqlSessionTemplate session, int deptno);
	public abstract int insert(SqlSessionTemplate session, Dept dept);
	public abstract int update(SqlSessionTemplate session, Dept dept);
	public abstract int deleteByDeptno(SqlSessionTemplate session, int deptno);
	
}

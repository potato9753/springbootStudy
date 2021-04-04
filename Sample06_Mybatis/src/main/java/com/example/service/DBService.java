package com.example.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.example.dto.Dept;

public interface DBService {
	public abstract List<Dept> selectAll();
	public abstract Dept selectByDeptno(int deptno);
	public abstract int insert(Dept dept);
	public abstract int update(Dept dept);
	public abstract int deleteByDeptno(int deptno);
	
}

package com.example.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.example.dto.Dept;

@Repository("dao")
public class DBOracleDAO implements DBDao {

	@Override
	public List<Dept> selectAll(SqlSessionTemplate session) {
		return session.selectList("DeptMapper.selectAll");
	}

	@Override
	public Dept selectByDeptno(SqlSessionTemplate session, int deptno) {
		return session.selectOne("DeptMapper.selectByDeptno",deptno);
	}

	@Override
	public int insert(SqlSessionTemplate session, Dept dept) {
		return session.insert("DeptMapper.insert",dept);
	}

	@Override
	public int update(SqlSessionTemplate session, Dept dept) {
		return session.update("DeptMapper.update", dept);
	}

	@Override
	public int deleteByDeptno(SqlSessionTemplate session, int deptno) {
		return session.delete("DeptMapper.deleteByDeptno", deptno);
	}

}

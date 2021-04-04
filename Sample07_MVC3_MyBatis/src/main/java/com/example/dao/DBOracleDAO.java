package com.example.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.example.dto.Board;

@Repository("dao")
public class DBOracleDAO implements DBDao {

	@Override
	public List<Board> boardList(SqlSessionTemplate session) {
		return session.selectList("BoardMapper.boardList");
	}

	@Override
	public Board selectByNum(SqlSessionTemplate session, int num) {
		//1. BoardMapper.xml에서  readcnt 1증가하는 update 작성하고
		//2. session.update("", num ) 호출
		int num2 = session.update("BoardMapper.readcnt", num);
		return session.selectOne("BoardMapper.selectByNum", num);
	}

	@Override
	public int boardWrite(SqlSessionTemplate session, Board board) {
		return session.insert("BoardMapper.boardWrite", board);
	}

	@Override
	public int boardUpdate(SqlSessionTemplate session, Board board) {
		return session.update("BoardMapper.boardUpdate", board);
	}

	@Override
	public int boardDelete(SqlSessionTemplate session, int num) {
		return session.delete("BoardMapper.boardDelete", num);
	}

}

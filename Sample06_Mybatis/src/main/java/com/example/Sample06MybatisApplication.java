package com.example;

import java.util.List;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import com.example.dto.Dept;
import com.example.service.DBOracleService;

@SpringBootApplication
public class Sample06MybatisApplication {

	public static void main(String[] args) {
		ApplicationContext ctx = SpringApplication.run(Sample06MybatisApplication.class, args);
		DBOracleService service = ctx.getBean("myService", DBOracleService.class);
		
		//2.저장
		//int num = service.insert(new Dept(98,"개발","제주"));
		
		//3. 수정
		//int num1 = service.update(new Dept(98,"개발1","제주1"));
		
		//4.삭제
		//int num2 = service.deleteByDeptno(51);
		
		//1.목록
		List<Dept> list = service.selectAll();
		for (Dept dept : list) {
			System.out.println(dept);
		}
	}

}

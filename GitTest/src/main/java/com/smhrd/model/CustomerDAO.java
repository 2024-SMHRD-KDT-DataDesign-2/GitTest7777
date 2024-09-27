package com.smhrd.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class CustomerDAO {
	// 실제적으로 DB와 연결할 수 있는 파일! -> SqlSessionFactory 같이!

		SqlSessionFactory sqlSessionFactroy = SqlSessionManager.getFactory();

		// 회원가입 기능
		public int join(CustomerDTO dto) {
			// 1. 회원가입을 하고자 하는 데이터 가지고 있어야한다! => 매개변수 사용!

			// 2. db로 전달! -> sqlSession 대여 -> sql 문장 실행 -> sqlSession 반납
			SqlSession sqlSession = sqlSessionFactroy.openSession(true);

			int cnt = sqlSession.insert("join", dto);

			// 3. db로부터 결과값 확인!
			System.out.println("성공여부 : " + cnt);

			sqlSession.close();

			return cnt;

		}

		// 로그인 기능
		public CustomerDTO login(CustomerDTO dto) {

			SqlSession sqlSession = sqlSessionFactroy.openSession(true);

			CustomerDTO result = sqlSession.selectOne("login", dto);

			sqlSession.close();

			return result;
		}

		// 전체 회원 조회 기능
		public List<CustomerDTO> selectAll() {
			// 1. sqlSession 빌려오기
			SqlSession sqlSession = sqlSessionFactroy.openSession();

			// 2. sqlSession을 사용하기 (select 여러개 값)
			List<CustomerDTO> resultList = sqlSession.selectList("selectAll");
			// memberDTO => 한명의 정보를 표현할 수 있는 type
			// 여러명의 정보를 하나로 묶어서 표현해야 함
			// 1) 객체 배열 2) ArrayList
			// : 크기가 가변적인 ArrayList가 우리한테 적합함.
			// : ArrayList의 부모 클래스 격인 List 형태로 리턴 받아오자!

			// 3. sqlSession 반납
			sqlSession.close();
			// 4. 조회한 결과값 반환(return)
			return resultList;
		}

		public int update(CustomerDTO dto) {
			// 1. session 빌려오기
			SqlSession sqlSession = sqlSessionFactroy.openSession(true);
			// 2. session 사용하기 (sql구문 실행)
			int row = sqlSession.update("update", dto);
			// 3. session 반납하기
			sqlSession.close();
			// 4. 조회한 결과를 return 해주기
			return row;

		}
	
	
}
package com.smhrd.db;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {

	// 전역변수로 쓸 수 있는 변수 지정!
	public static SqlSessionFactory sqlSessionFactory;

	// 초기화 블럭 => static{}
	// 클래스가 로딩되거나 호출될 때 자동으로 실행될 수 있는 구조
	// 주로 초기화 해야 하는 작업이 있을 때 static{}을 사용한다!
	static {
		try {
			String resource = "com/smhrd/db/Mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

		} catch (Exception e) {
			// 오류가 발생되면 해당 내용을 출력하는 영역!
			e.printStackTrace();
		}
	}

	// 해당 클래스의 메소드를 호출하면 결과적으로 만들어진 sqlSessionFactory를 가져갈 수 있는
	// 구조가 필요하다! => DAO에서 DB 접근을 위하여 SqlSession을 대여/반납 위한 기능!
	public static SqlSessionFactory getFactory() {
		return sqlSessionFactory;
	}

}

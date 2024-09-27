package com.smhrd.db;

import java.io.InputStream;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {

    public static SqlSessionFactory sqlSessionFactory;

    static {
        try {
            // MyBatis 설정 파일의 경로
            String resource = "com/smhrd/db/Mybatis-config.xml";
            InputStream inputStream = Resources.getResourceAsStream(resource);
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static SqlSessionFactory getFactory() {
        return sqlSessionFactory;
    }
}

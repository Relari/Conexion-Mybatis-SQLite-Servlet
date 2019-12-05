package com.wildfly.mybatis.config;

import javax.sql.DataSource;

import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.SimpleDriverDataSource;

@Configuration
@MapperScan("com.wildfly.mybatis.mapper")
public class AppConfig {
 
	@Bean
	public DataSource dataSource() {
		SimpleDriverDataSource sdds = new SimpleDriverDataSource();
		sdds.setDriverClass(org.sqlite.JDBC.class);
		sdds.setUrl("jdbc:sqlite:C:/SQLiteDatabaseBrowserPortable/Data/prueba.db");
//		sdds.setUsername("root");
//		sdds.setPassword("password");
		return sdds;
	}
 
	@Bean
	public DataSourceTransactionManager transactionManager() {
		return new DataSourceTransactionManager(dataSource());
	}
 
	@Bean
	public SqlSessionFactoryBean sqlSessionFactory() throws Exception {
		SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
		sessionFactory.setDataSource(dataSource());
		return sessionFactory;
	}
	
}
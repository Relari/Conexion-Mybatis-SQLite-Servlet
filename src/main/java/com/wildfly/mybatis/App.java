package com.wildfly.mybatis;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.wildfly.mybatis.bean.Document;
import com.wildfly.mybatis.config.AppConfig;
import com.wildfly.mybatis.mapper.DocumentMapper;

public class App {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);

		DocumentMapper footballerRepository = context.getBean(DocumentMapper.class);

//		Footballer footballer = new Footballer(4,"Sergio","Ramos Garcia");
//		footballerRepository.addFootballer(footballer);

		for (Document footballer1 : footballerRepository.selectAll()) {
			System.out.println(footballer1.toString());
		}
	}
}

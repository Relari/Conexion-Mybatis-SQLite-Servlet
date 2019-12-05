package com.wildfly.mybatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.wildfly.mybatis.bean.Document;

@Repository
public interface DocumentMapper {

	@Select("SELECT * FROM Document")
	public List<Document> selectAll();
	
//	@Select("SELECT * FROM Document WHERE ID = #{id}")
//	Document findById(int id);
	
	@Insert("INSERT INTO Document (DESCRIPCION) VALUES (#{descripcion})")
	void addDocument (Document document);
	
	@Delete("DELETE FROM Document WHERE ID = #{id}")
	void deleteByIdDocument (int id);
	
	@Update("UPDATE Document SET DESCRIPCION = #{descripcion} WHERE ID = #{ID}")
	void updateDocument (Document document);
	
}

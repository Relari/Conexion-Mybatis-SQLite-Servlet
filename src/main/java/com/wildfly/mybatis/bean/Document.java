package com.wildfly.mybatis.bean;

import java.io.Serializable;

public class Document implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer ID;
	private String Descripcion;
	
	public Document() {
		// TODO Auto-generated constructor stub
	}

	public Integer getID() {
		return ID;
	}

	public void setID(Integer iD) {
		ID = iD;
	}

	public String getDescripcion() {
		return Descripcion;
	}

	public void setDescripcion(String descripcion) {
		Descripcion = descripcion;
	}

	@Override
	public String toString() {
		return "Document [ID=" + ID + ", Descripcion=" + Descripcion + "]";
	}
	
}

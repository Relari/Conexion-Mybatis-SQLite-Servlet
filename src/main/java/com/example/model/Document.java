package com.example.model;

import lombok.Data;

import java.io.Serializable;

@Data
public class Document implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String description;

}

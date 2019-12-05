package com.wildfly.mybatis.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.wildfly.mybatis.bean.Document;
import com.wildfly.mybatis.config.AppConfig;
import com.wildfly.mybatis.mapper.DocumentMapper;

/**
 * Servlet implementation class servletDocument
 */
@WebServlet("/add")
public class servletDocument extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public servletDocument() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);

		DocumentMapper documentRepository = context.getBean(DocumentMapper.class);

		String descripcion = request.getParameter("txtDescripcion");

		Document document = new Document();

		document.setDescripcion(descripcion.toUpperCase());

		documentRepository.addDocument(document);

		response.getWriter().append("<a href='index.jsp'>Regresar</a>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

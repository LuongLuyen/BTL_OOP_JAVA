package com.websitebtl.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.websitebtl.service.IProductService;

@WebServlet(urlPatterns = {"/admin"})
public class HomeController extends HttpServlet {
	@Inject
	private IProductService ProductService;
	
	private static final long serialVersionUID = -6622126168801261536L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("ProductModel", ProductService.findAll());
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
	}
}
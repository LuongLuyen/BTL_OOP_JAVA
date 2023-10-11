package com.websitebtl.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.websitebtl.service.IProductService;

@WebServlet(urlPatterns = {"/login"})
public class LoginController extends HttpServlet {
	@Inject
	private IProductService ProductService;
	
	private static final long serialVersionUID = -6622126168801261536L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName = request.getParameter("name");
		String password = request.getParameter("password");
		if(userName.equals("NguyenVanA") && password.equals("123")) {
			request.setAttribute("ProductModel", ProductService.findAll());
			RequestDispatcher rd = request.getRequestDispatcher("/views/web.jsp");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
			rd.forward(request, response);
		}
	}
}
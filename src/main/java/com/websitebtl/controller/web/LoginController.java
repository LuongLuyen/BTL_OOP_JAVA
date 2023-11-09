package com.websitebtl.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.websitebtl.model.UserModel;
import com.websitebtl.service.IProductService;
import com.websitebtl.service.IUserService;

@WebServlet(urlPatterns = { "/login" })
public class LoginController extends HttpServlet {
	@Inject
	private IProductService ProductService;
	@Inject
	private IUserService userService;

	private static final long serialVersionUID = -6622126168801261536L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userName = request.getParameter("name");
		String password = request.getParameter("password");
		UserModel userModel = new UserModel();
		userModel = userService.findUserNameAndPassword(userName, password);
		if(userModel == null) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
			rd.forward(request, response);
		}else if(userName.equals(userModel.getUserName()) && password.equals(userModel.getPassword())) {
			session.setAttribute("userId", userModel.getId().toString());
			request.setAttribute("ProductModel", ProductService.findAll());
			RequestDispatcher rd = request.getRequestDispatcher("/views/web.jsp");
			rd.forward(request, response);
		}
	}
}
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

@WebServlet(urlPatterns = { "/home" })
public class HomeController extends HttpServlet {

	@Inject
	private IProductService ProductService;

	private static final long serialVersionUID = -6622126168801261536L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("ProductModel", ProductService.findAll());
		RequestDispatcher rd = request.getRequestDispatcher("/views/web.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String type = request.getParameter("type");
		if (type.equals("category")) {
			String category = request.getParameter("category");
			request.setAttribute("ProductModel", ProductService.findCategory(category));
		} 
		if (type.equals("sort")) {
				String sort = request.getParameter("sortSC");
				String limitStr = request.getParameter("newProduct");
				if (limitStr != null) {
					long limit = Long.parseLong(limitStr);
					request.setAttribute("ProductModel", ProductService.orderById(sort, limit));
				} else {
					request.setAttribute("ProductModel", ProductService.orderById(sort, null));
				}
			}
			RequestDispatcher rd = request.getRequestDispatcher("/views/web.jsp");
			rd.forward(request, response);
		}
	}

package com.websitebtl.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.websitebtl.model.ProductModel;
import com.websitebtl.service.IProductService;
import com.websitebtl.utils.FormUtil;

@WebServlet(urlPatterns = {"/add"})
public class AddController extends HttpServlet {
	@Inject
	private IProductService ProductService;
	
	private static final long serialVersionUID = -6622126168801261536L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/views/add.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String type = request.getParameter("type");
		 ProductModel model = FormUtil.toModel(ProductModel.class, request);
		switch (type) {
		case "add":
			model.setUserId(1L);
			model = ProductService.save(model);
			request.setAttribute("ProductModel", ProductService.findAll());
			break;
		case "update":
			model.setUserId(1L);
			ProductService.update(model);
			request.setAttribute("ProductModel", ProductService.findAll());
			break;
		default:
			
		}
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin.jsp");
		rd.forward(request, response);
	}
}

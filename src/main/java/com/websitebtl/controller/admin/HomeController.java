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

@WebServlet(urlPatterns = { "/admin" })
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
		request.setCharacterEncoding("UTF-8");
		String type = request.getParameter("type");

		// "/views/edit.jsp"
		if (type.equals("edit")) {
			String idProduct = request.getParameter("edit");
			long id = Long.parseLong(idProduct);
			request.setAttribute("ProductModel", ProductService.findById(id));
			RequestDispatcher rd = request.getRequestDispatcher("/views/edit.jsp");
			rd.forward(request, response);
		}
		// "/views/admin.jsp"
		switch (type) {
		case "category":
			String category = request.getParameter("category");
			request.setAttribute("ProductModel", ProductService.findCategory(category));
			break;
		case "delete":
			String idDelete = request.getParameter("delete");
			long id = Long.parseLong(idDelete);
			ProductService.delete(id);
			request.setAttribute("ProductModel", ProductService.findAll());
			break;
		case "sort":
			String sort = request.getParameter("sortSC");
			String limitStr = request.getParameter("newProduct");
			if (limitStr != null) {
				long limit = Long.parseLong(limitStr);
				request.setAttribute("ProductModel", ProductService.orderById(sort, limit));
			} else {
				request.setAttribute("ProductModel", ProductService.orderById(sort, null));
			}
			break;
		default:
			request.setAttribute("ProductModel", ProductService.findAll());
		}
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin.jsp");
		rd.forward(request, response);
	}
}
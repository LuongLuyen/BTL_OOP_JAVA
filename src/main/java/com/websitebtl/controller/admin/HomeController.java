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
		if (type.equals("category")) {
			String category = request.getParameter("category");
			request.setAttribute("ProductModel", ProductService.findCategory(category));
			RequestDispatcher rd = request.getRequestDispatcher("/views/admin.jsp");
			rd.forward(request, response);
		}else if(type.equals("delete")) {
			String idDelete = request.getParameter("delete");
			long id = Long.parseLong(idDelete);
		    ProductService.delete(id);
			request.setAttribute("ProductModel", ProductService.findAll());
			RequestDispatcher rd = request.getRequestDispatcher("/views/admin.jsp");
			rd.forward(request, response);
		}else if(type.equals("edit")) {
			String idProduct = request.getParameter("edit");
			long id = Long.parseLong(idProduct);
			request.setAttribute("ProductModel", ProductService.findById(id));
			RequestDispatcher rd = request.getRequestDispatcher("/views/edit.jsp");
			rd.forward(request, response);
		}else if(type.equals("add")) {
			ProductModel model = FormUtil.toModel(ProductModel.class, request);
			model.setUserId(1L);
			model = ProductService.save(model);
			request.setAttribute("ProductModel", ProductService.findAll());
			RequestDispatcher rd = request.getRequestDispatcher("/views/admin.jsp");
			rd.forward(request, response);
		}else if(type.equals("sort")) {
			String sort = request.getParameter("sortSC");
			String limitStr = request.getParameter("newProduct");
			if(limitStr != null) {
				long limit = Long.parseLong(limitStr);
				request.setAttribute("ProductModel", ProductService.orderById(sort, limit));
				RequestDispatcher rd = request.getRequestDispatcher("/views/admin.jsp");
				rd.forward(request, response);
			}else {
				request.setAttribute("ProductModel", ProductService.orderById(sort, null));
				RequestDispatcher rd = request.getRequestDispatcher("/views/admin.jsp");
				rd.forward(request, response);
			}	
		}
	}
}
package com.websitebtl.controller.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.websitebtl.model.PaymentModel;
import com.websitebtl.model.ProductModel;
import com.websitebtl.service.IPaymentService;
import com.websitebtl.service.IProductService;

@WebServlet(urlPatterns = { "/home" })
public class HomeController extends HttpServlet {

	@Inject
	private IProductService ProductService;
	@Inject
	private IPaymentService paymentService;

	private static final long serialVersionUID = -6622126168801261536L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userIdStr = (String) session.getAttribute("userId");
		Long userId = Long.parseLong(userIdStr);
		String role = userIdStr;
		if(userId !=1) {
			role= "";
		}
		request.setAttribute("role", role);
		request.setAttribute("ProductModel", ProductService.findAll());
		RequestDispatcher rd = request.getRequestDispatcher("/views/web.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String type = request.getParameter("type");
		String idStr = request.getParameter("id");
		if(idStr != null) {
			String userIdStr = (String) session.getAttribute("userId");
			Long userId = Long.parseLong(userIdStr);
			Long id = Long.parseLong(idStr);
			List<PaymentModel> listPaymentModels = new ArrayList<>();
			ProductModel productModel = new ProductModel();
			productModel = ProductService.findById(id);
			PaymentModel paymentModel = new PaymentModel();
			paymentModel.setUserId(userId);
			paymentModel.setShortDescription(productModel.getShortDescription());
			paymentModel.setThumbnail(productModel.getThumbnail());
			paymentModel.setTransport("");
			paymentModel.setCategory(productModel.getCategory());
			paymentModel.setPrice(productModel.getPrice());
			listPaymentModels.add(paymentModel);
			paymentService.save(paymentModel);
			if (type.equals("cart")) {
				request.setAttribute("ProductModel", ProductService.findAll());
				RequestDispatcher rd = request.getRequestDispatcher("/views/web.jsp");
				rd.forward(request, response);
			}
			if (type.equals("buy")) {
				listPaymentModels = paymentService.findByIdUser(userId);
				request.setAttribute("ProductModel", listPaymentModels);
				RequestDispatcher rd = request.getRequestDispatcher("/views/paymentAndCart.jsp");
				rd.forward(request, response);
			}

		}
		switch (type) {
		case "category":
			String category = request.getParameter("category");
			request.setAttribute("ProductModel", ProductService.findCategory(category));
			break;
		case "logout":
			session.removeAttribute("userId");
			RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
			rd.forward(request, response);
			break;
		case "search":
			String search = request.getParameter("search");
			List<ProductModel> productModel = new ArrayList<>();
			List<ProductModel> dataSearch = new ArrayList<>();
	        productModel = ProductService.findAll();
			for (ProductModel result : productModel) {
				if (result.getShortDescription().contains(search)) {
					dataSearch.add(result);
				}
			}
			request.setAttribute("ProductModel", dataSearch);
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
		RequestDispatcher rd = request.getRequestDispatcher("/views/web.jsp");
		rd.forward(request, response);
	}
}

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
		request.setAttribute("ProductModel", ProductService.findAll());
		RequestDispatcher rd = request.getRequestDispatcher("/views/web.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String type = request.getParameter("type");
		if(type.equals("cart")) {
			String cartID = request.getParameter("cart");
			Long id = Long.parseLong(cartID);
			List<PaymentModel> listPaymentModels = new ArrayList<>();
			ProductModel productModel = new ProductModel();
			PaymentModel paymentModel = new PaymentModel();
			productModel = ProductService.findById(id);
			paymentModel.setUserId(productModel.getUserId());
			paymentModel.setShortDescription(productModel.getShortDescription());
			paymentModel.setThumbnail(productModel.getThumbnail());
			paymentModel.setTransport("");
			paymentModel.setCategory(productModel.getCategory());
			paymentModel.setPrice(productModel.getPrice());
			listPaymentModels.add(paymentModel);
			paymentService.save(paymentModel);
			request.setAttribute("ProductModel", ProductService.findAll());
			RequestDispatcher rd = request.getRequestDispatcher("/views/web.jsp");
			rd.forward(request, response);
		}
		if(type.equals("buy")) {
			String buyID = request.getParameter("buy");
			Long id = Long.parseLong(buyID);
			List<PaymentModel> listPaymentModels = new ArrayList<>();
			ProductModel productModel = new ProductModel();
			PaymentModel paymentModel = new PaymentModel();
			productModel = ProductService.findById(id);
			paymentModel.setUserId(productModel.getUserId());
			paymentModel.setShortDescription(productModel.getShortDescription());
			paymentModel.setThumbnail(productModel.getThumbnail());
			paymentModel.setTransport("");
			paymentModel.setCategory(productModel.getCategory());
			paymentModel.setPrice(productModel.getPrice());
			listPaymentModels.add(paymentModel);
			paymentService.save(paymentModel);
			listPaymentModels = paymentService.findByIdUser(1L);
			request.setAttribute("ProductModel",listPaymentModels);
			RequestDispatcher rd = request.getRequestDispatcher("/views/paymentAndCart.jsp");
			rd.forward(request, response);
		}
		
		if (type.equals("category")) {
			String category = request.getParameter("category");
			request.setAttribute("ProductModel", ProductService.findCategory(category));
		}
		if (type.equals("search")) {
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

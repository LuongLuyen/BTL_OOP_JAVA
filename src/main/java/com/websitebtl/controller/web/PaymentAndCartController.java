package com.websitebtl.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.websitebtl.service.IPaymentService;

@WebServlet(urlPatterns = {"/payment"})
public class PaymentAndCartController extends HttpServlet {
	@Inject
	private IPaymentService PaymentService;
	private static final long serialVersionUID = -6622126168801261536L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("ProductModel", PaymentService.findAll());
		RequestDispatcher rd = request.getRequestDispatcher("/views/paymentAndCart.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String type = request.getParameter("type");
		if(type.equals("transport")) {
			String transport = request.getParameter("transport");
			request.setAttribute("ProductModel", PaymentService.findCategory(transport));
		}else {
			request.setAttribute("ProductModel", PaymentService.findAll());
		}
		RequestDispatcher rd = request.getRequestDispatcher("/views/paymentAndCart.jsp");
		rd.forward(request, response);
	
	}
}

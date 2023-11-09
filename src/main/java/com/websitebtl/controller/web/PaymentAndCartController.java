package com.websitebtl.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.websitebtl.model.PaymentModel;
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
		request.setCharacterEncoding("UTF-8");
		String type = request.getParameter("type");
		switch (type) {
		case "status":
			String statusId = request.getParameter("status");
			Long id = Long.parseLong(statusId);
			PaymentModel paymentModel = new PaymentModel();
			paymentModel = PaymentService.findOne(id);
			switch (paymentModel.getTransport()) {
			case "":
				paymentModel.setTransport("Chờ thanh toán");
				PaymentService.update(paymentModel);
				request.setAttribute("ProductModel", PaymentService.findCategory("Chờ thanh toán"));
				break;
			case "Chờ thanh toán":
				paymentModel.setTransport("Vận chuyển");
				PaymentService.update(paymentModel);
				request.setAttribute("ProductModel", PaymentService.findCategory("Vận chuyển"));
				break;
			case "Vận chuyển":
				paymentModel.setTransport("Đang giao");
				PaymentService.update(paymentModel);
				request.setAttribute("ProductModel", PaymentService.findCategory("Đang giao"));
				break;
			case "Đang giao":
				paymentModel.setTransport("Hoàn thành");
				PaymentService.update(paymentModel);
				request.setAttribute("ProductModel", PaymentService.findCategory("Hoàn thành"));
				break;
			case "Hoàn thành":
				request.setAttribute("ProductModel", PaymentService.findCategory("Hoàn thành"));
				break;
			default:
				request.setAttribute("ProductModel", PaymentService.findCategory("Hoàn thành"));
			}
			RequestDispatcher rd = request.getRequestDispatcher("/views/paymentAndCart.jsp");
			rd.forward(request, response);
			break;
		case "delete":
			String idDeleteStr = request.getParameter("deleteId");
			Long idD = Long.parseLong(idDeleteStr);
			PaymentService.delete(idD);
			request.setAttribute("ProductModel", PaymentService.findAll());
			break;
		case "transport":
			String transport = request.getParameter("transport");
			request.setAttribute("ProductModel", PaymentService.findCategory(transport));
			break;
		default:
			request.setAttribute("ProductModel", PaymentService.findAll());
		}
		RequestDispatcher rd = request.getRequestDispatcher("/views/paymentAndCart.jsp");
		rd.forward(request, response);
	}
}

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

import com.websitebtl.model.PaymentModel;
import com.websitebtl.service.IPaymentService;

@WebServlet(urlPatterns = {"/payment"})
public class PaymentAndCartController extends HttpServlet {
	@Inject
	private IPaymentService PaymentService;
	private static final long serialVersionUID = -6622126168801261536L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userIdStr = (String) session.getAttribute("userId");
		Long userId = Long.parseLong(userIdStr);
		request.setAttribute("ProductModel", PaymentService.findByIdUser(userId));
		RequestDispatcher rd = request.getRequestDispatcher("/views/paymentAndCart.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String type = request.getParameter("type");
		HttpSession session = request.getSession();
		String userIdStr = (String) session.getAttribute("userId");
		Long userId = Long.parseLong(userIdStr);
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
				request.setAttribute("ProductModel", PaymentService.findCategoryByUser("Chờ thanh toán",userId));
				break;
			case "Chờ thanh toán":
				paymentModel.setTransport("Vận chuyển");
				PaymentService.update(paymentModel);
				request.setAttribute("ProductModel", PaymentService.findCategoryByUser("Vận chuyển",userId));
				break;
			case "Vận chuyển":
				paymentModel.setTransport("Đang giao");
				PaymentService.update(paymentModel);
				request.setAttribute("ProductModel", PaymentService.findCategoryByUser("Đang giao",userId));
				break;
			case "Đang giao":
				paymentModel.setTransport("Hoàn thành");
				PaymentService.update(paymentModel);
				request.setAttribute("ProductModel", PaymentService.findCategoryByUser("Hoàn thành",userId));
				break;
			case "Hoàn thành":
				request.setAttribute("ProductModel", PaymentService.findCategoryByUser("Hoàn thành",userId));
				break;
			default:
				request.setAttribute("ProductModel", PaymentService.findCategoryByUser("Hoàn thành",userId));
			}
			RequestDispatcher rd = request.getRequestDispatcher("/views/paymentAndCart.jsp");
			rd.forward(request, response);
			break;
		case "delete":
			String idDeleteStr = request.getParameter("deleteId");
			Long idD = Long.parseLong(idDeleteStr);
			PaymentService.delete(idD);
			request.setAttribute("ProductModel", PaymentService.findByIdUser(userId));
			break;
		case "transport":
			String transport = request.getParameter("transport");
			request.setAttribute("ProductModel", PaymentService.findCategoryByUser(transport,userId));
			break;
		default:
			request.setAttribute("ProductModel", PaymentService.findByIdUser(userId));
		}
		RequestDispatcher rd = request.getRequestDispatcher("/views/paymentAndCart.jsp");
		rd.forward(request, response);
	}
}

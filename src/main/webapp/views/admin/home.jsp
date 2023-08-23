<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link href="<c:url value='/style/admin.css' />" rel="stylesheet" type="text/css" media="all"/>
        <title>Admin</title>
    </head>
    <body>
        <div class="app">
            <div class="admin__title">Trang quản trị</div>
            <div class="admin__filter">
               filter
            </div>
            <div class="admin__content">
                <div class="admin__nav">
                    <h4 class="admin__nav-item">
                        Danh mục
                    </h4>
                    <div class="admin__nav-item">
                        Sản phẩm 1
                    </div>
                    <div class="admin__nav-item">
                        Sản phẩm 2
                    </div>
                    <div class="admin__nav-item">
                        Sản phẩm 3
                    </div>
                    <div class="admin__nav-item">
                        Sản phẩm 4
                    </div>
                    <div class="admin__nav-item">
                        Sản phẩm 5
                    </div>
                    <div class="admin__nav-item">
                        Sản phẩm 6
                    </div>
                </div>
                <div class="admin__main">
                    <table style="width:100%">
                              <tr>
                                  <th>Tên sản phẩm</th>
                                  <th>Thể loại</th>
                                  <th>Giá</th>
                              </tr>
                         <c:forEach var="item" items="${ProductModel}">
                              <tr>
                                  <td>${item.shortDescription}</td>
                                  <td>${item.category}</td>
                                  <td>${item.price}</td>
                              </tr>
                          </c:forEach>
                      </table>
                </div>
            </div>
        </div>

    </body>
</html>
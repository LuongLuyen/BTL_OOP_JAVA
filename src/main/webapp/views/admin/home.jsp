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
                 <c:forEach var="item" items="${ProductModel}">
                      <div>${item.price}</div>
                </c:forEach>
            
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
                        <tr>
                          <td>Áo nam</td>
                          <td>Áo Sơ-mi</td>
                          <td>100.000vnd</td>
                        </tr>
                        <tr>
                          <td>Quần nam</td>
                          <td>Quần thể thao</td>
                          <td>55.000vnd</td>
                        </tr>
                        <tr>
                          <td>Laptop</td>
                          <td>Acer</td>
                          <td>15.000.000vnd</td>
                        </tr>
                        <tr>
                          <td>Ti vi</td>
                          <td>Samsung</td>
                          <td>5.000.000vnd</td>
                        </tr>
                        <tr>
                          <td>Ti vi</td>
                          <td>Samsung</td>
                          <td>5.000.000vnd</td>
                        </tr>
                        <tr>
                          <td>Ti vi</td>
                          <td>Samsung</td>
                          <td>5.000.000vnd</td>
                        </tr>
                        <tr>
                          <td>Ti vi</td>
                          <td>Samsung</td>
                          <td>5.000.000vnd</td>
                        </tr>
                      </table>
                </div>
            </div>
        </div>

    </body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
         <link href="<c:url value='/style/styleWeb.css' />" rel="stylesheet" type="text/css" media="all"/>
        <title>Home</title>
    </head>
    <body>
        <div class="web__app">
            <div class="title">
                <a class="web__navi" href="<c:url value='/admin'/>" >
                    Trang quản trị
                </a>
            </div>
            <div class="web__form">
                <form class="form" action="">
                    <label for="fname">UserName:</label><br>
                    <input class="web__login" type="text" id="fname" name="fname" value="UserName"><br>
                    <label for="lname">Password:</label><br>
                    <input class="web__login" type="text" id="lname" name="lname" value="Password"><br><br>
                    <button class="login__btn" type="submit">Login</button>
                  </form> 
            </div>
        </div>
    </body>
</html>
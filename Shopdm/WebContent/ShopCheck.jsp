<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>点餐信息</title>
</head>
<body>
  <jsp:useBean id="cart" scope="session" class="haoyou.ShopBean"/>
  <jsp:setProperty name="cart" property="*"/>
  <%
      cart.processRequest(request);
  %>
  <br>您要的套餐有：
  <ol>
    <%
      String[] items=cart.getItems();
      for(int i=0;i<items.length;i++){
    %>
    <li><%=items[i]%></li>
    <%
       }
    %>
 </ol>
 <br>
<hr>
<%@include file="Shop.jsp"%>
</body>
</html>
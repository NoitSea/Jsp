<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>在线点餐-饿了就点我吧！</title>
</head>
<body bgcolor="CCCFFF">
   
  <body bgcolor="CCCFFF">
   <jsp:useBean id="user" scope="page" class="haoyou.UserInfoBean"/>
   <jsp:setProperty name="user" property="*"/>
   <% 
        if(user.getUserName()==null||user.getPassword()==null){
      %>
  <jsp:forward page="Login.jsp"/>
   <%
      }
     if(user.getUserName().equals("QQ")){
        if(user.getPassword().equals("123456")){
   %>
      <jsp:forward page="Shop.jsp">
        <jsp:param name="userName"
            value="<%=user.getUserName()%>"/>
         </jsp:forward>
   <%
      }else{
    %>
        <jsp:forward page="failure.jsp"/>
    <%
       }
      }else{
    %>
       <jsp:forward page="failure.jsp"/>
    <%  
       }
    %>
 </body>
</html>

   







   



   







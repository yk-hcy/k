<%--
  Created by IntelliJ IDEA.
  User: wangy
  Date: 2018/11/9
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="org.wang.db.*,org.wang.model.*" %>
<%@ page import="java.util.Map" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        //获取map集合
        Map<String,Emp> map = DBUtil.map;
        //修改信息
        //获取当前需要修改的员工的account
        Emp emp = map.get(request.getParameter("account"));
        //把获取到的当前员工的信息重新set
        emp.setName(request.getParameter("name"));
        emp.setEmail(request.getParameter("email"));
    %>
    <h3 align="center">修改员工信息成功</h3>
</body>
</html>
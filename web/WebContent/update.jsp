<%--
  Created by IntelliJ IDEA.
  User: wangy
  Date: 2018/11/8
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工更新页面</title>
</head>
<body>
    <h3 align="right">当前访问量：<%=application.getAttribute("count")%></h3>
    <h3 align="center">员工更新页面</h3>
    <%--获取session中的值并显示到页面上--%>
    <h3 align="right">登录账户：<%=session.getAttribute("account")%></h3>
    <hr>
    <form action="update-control.jsp">
        <table align="center" border="1" width="500px">
            <tr>
                <%--value="<%=request.getParameter("account")%>"可用于实现数据的回显--%>
                <td>账号</td>
                <td><input type="text" name="account" value="<%=request.getParameter("account")%>"></td>
            </tr>
            <tr>
                <td>姓名</td>
                <td><input type="text" name="name" value="<%=request.getParameter("name")%>"></td>
            </tr>
            <tr>
                <td>邮箱</td>
                <td><input type="text" name="email" value="<%=request.getParameter("email")%>"></td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="修改">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
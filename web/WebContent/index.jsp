<%--
  Created by IntelliJ IDEA.
  User: wangy
  Date: 2018/11/8
  Time: 8:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>人事管理系统登录</title>
  </head>
  <body>
    <h3 align="center">人事管理系统登录页面</h3>
    <hr>
    <%--action代表了服务器端的处理程序--%>
    <form action="index-control.jsp">
        <table align="center">
          <tr>
            <td>
              账号：
            </td>
            <td>
              <input type="text" name="account">
            </td>
          </tr>
          <tr>
            <td>
              密码：
            </td>
            <td>
              <input type="password" name="password">
            </td>
          </tr>
          <tr>
            <td>
              <input type="submit" value="登录">
            </td>
          </tr>
        </table>
    </form>
  </body>
</html>
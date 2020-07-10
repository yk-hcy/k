<%--
  Created by IntelliJ IDEA.
  User: wangy
  Date: 2018/11/8
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<%@ page import="org.wang.db.*,org.wang.model.*" %>
<%@ page import="java.util.Map" %>
<html>
<head>
    <title>人事管理系统</title>
</head>
<body>
    <%--获取用户输入的账号及密码，并调用DBUtil中的方法判断信息是否存在
        request:获取请求信息
        request.getParameter(String name)：可以通过一个控件的name属性来获取控件的值
        out.println(); 向页面输出信息
    --%>
    <%
        //  获取用户输入的账号及密码
        String account = request.getParameter("account");
        String password = request.getParameter("password");

        //将用户输入的账号和密码封装到一个Emp对象中
        Emp emp = new Emp(account,null,password,null);
        boolean flag = DBUtil.selectEmpByAccountAndPassword(emp);

        //获取map集合
        Map<String,Emp> map = DBUtil.map;
        if(flag==true){
            //设置session
            session.setAttribute("account",account);
            //使用application来获取系统访问量
            Object o = application.getAttribute("count");
            //判断如果当前用户为第一个登录，则application中的值为空，此时将访问量设置为1
            if(o == null){
                application.setAttribute("count",1);
            }else{
                //count原来为String，强转为int型，并做+1操作
                int count = Integer.parseInt(o.toString());
                application.setAttribute("count",count+1);
            }
    %>
    <%--获取访问量并显示到页面上--%>
    <h3 align="right">当前访问量：<%=application.getAttribute("count")%></h3>
    <%--获取session中的值并显示到页面上--%>
    <h3 align="center">欢迎来到人事管理系统</h3>
    <h3 align="right">登录账户：<%=session.getAttribute("account")%></h3>
    <hr>
    <table align="center" border="1" width="500px">
        <tr>
            <td>
                账号
            </td>
            <td>
                员工姓名
            </td>
            <td>
                邮箱
            </td>
            <td>
                修改
            </td>
        </tr>
        <%--用for循环自动根据模拟数据库中的数据生成单元行，显示出员工信息表--%>
        <%
            for (String key : map.keySet()){
                Emp e = map.get(key);
        %>
       <tr>
           <td>
               <%=e.getAccount()%>
           </td>
           <td>
               <%=e.getName()%>
           </td>
           <td>
               <%=e.getEmail()%>
           </td>
           <td>
               <%--点击修改跳转到update.jsp页面，采用URL方式传递参数,地址栏会显示数据信息--%>
               <%--相邻两个jsp页面传递数据时，可通过URL参数的方式传递--%>
                   <%--语法规则：页面？key1=value1 & key2=value2--%>
               <a href="update.jsp?account=<%=e.getAccount()%>&name=<%=e.getName()%>&email=<%=e.getEmail()%>">修改</a>
           </td>
       </tr>
        <%
            }
        %>
    </table>
    <%
        }else{
            throw new Exception("登录失败");
        }
    %>

</body>
</html>
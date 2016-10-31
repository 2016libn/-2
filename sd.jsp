<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%!
public String codeToString(String str){//处理中文字符串的函数
	String s=str;
	try{
		byte tempB[]=s.getBytes("ISO-8859-1");
		s=new String(tempB);
		return s;
	}catch(Exception e){
		return s;
	}
}
%>
<html>
<head>
<title>用户登录成功</title>
</head>
<body>
用户登录成功！<br>
你的用户名是：<%=codeToString(request.getParameter("username1")) %>
<%//页面重定向程序片
String url;
url=request.getParameter("goaddress");
if(url!=null) response.sendRedirect(url);%>

<form name="form1" action="sd.jsp" method="post">
页面重定向
<select name="goaddress" onchange="javascript :form1.submit()">
				<option value="">=============请选择============</option>
				<option value="http://localhost:8080/ch03/selectUserTable1.jsp">课表信息</option>
				<option value="http://jwc1.ecjtu.jx.cn/">华东交通大学教务处</option>
				<option value="http://localhost:8080/website/leave.jsp">学生请假申请</option>
</select>
</form>
</body>
</html>

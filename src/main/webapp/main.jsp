<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
  <title>My JSP 'main.jsp' starting page</title>
  <script>
      function shizhong(){
          var date=new Date();
          var div=document.getElementById("divid");
          div.innerText=date.toLocaleString();
      }
      function jishiqi(){
          setInterval(shizhong,1000);
      }
      jishiqi();
  </script>
</head>

<body>
<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TR height=28>
    <TD background=images/title_bg1.jpg>当前位置: </TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background=images/shadow_bg.jpg></TD></TR></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center border=0>
  <TR height=100>
    <TD align="center" width=100><IMG height=100 src="images/admin_p.gif"
                                      width=90></TD>
    <TD width=60>&nbsp;</TD>
    <TD>
      <TABLE height=100 cellSpacing=0 cellPadding=0 width="100%" border=0>

        <TR>
          <TD><font color="blue"><h1><br><div name="divname" id="divid" align="center"></div></h1></font></TD></TR>
        <TR>

          <%--患者版面开始--%>
          <c:if test="${user.role_id==1}">
          <TD style="FONT-WEIGHT: bold; FONT-SIZE: 16px">${user.patient.patient_name}</TD>
        </TR>
        <TR>
          <TD>欢迎进入网站管理中心！</TD></TR></TABLE></TD></TR>
  <TR>
    <TD colSpan=3 height=10></TD></TR></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="95%" align=center border=0>
  <TR height=20>
    <TD></TD></TR>
  <TR height=22>
    <TD style="PADDING-LEFT: 20px; FONT-WEIGHT: bold; COLOR: #ffffff"
        align="center" background=images/title_bg2.jpg>您的相关信息</TD></TR>
  <TR bgColor=#ecf4fc height=12>
    <TD></TD></TR>
  <TR height=20>
    <TD></TD></TR></TABLE>
<TABLE cellSpacing=0 cellPadding=2 width="95%" align=center border=0>
  <TR>
    <TD align=right width=100>登陆帐号：</TD>
    <TD style="COLOR: #880000">${user.patient.patient_name}</TD></TR>
  <TR>
    <TD align=right>真实姓名：</TD>
    <TD style="COLOR: #880000">${user.patient.patient_name}</TD></TR>
  <TR>
    <TD align=right>注册时间：</TD>
    <TD style="COLOR: #880000">${user.patient.create_date}</TD></TR>
  <TR>
    <TD align=right>地址(xx省xx市)：</TD>
    <TD style="COLOR: #880000">${user.patient.address_povince}省${user.patient.address_city}市</TD></TR>
  <TR>
    <TD align=right>联系电话：</TD>
    <TD style="COLOR: #880000">${user.patient.phone}</TD></TR>
  <TR>
    <TD align=right>上线时间：</TD>
    <TD style="COLOR: #880000"><%=new Date() %></TD></TR>
  </c:if>
  <%--患者版面结束--%>

  <%--医生版面开始--%>
  <c:if test="${user.role_id==2}">
  <TD style="FONT-WEIGHT: bold; FONT-SIZE: 16px">${user.doctor.name}</TD>
  </TR>
  <TR>
    <TD>欢迎进入网站管理中心！</TD></TR></TABLE></TD></TR>
<TR>
  <TD colSpan=3 height=10></TD></TR></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="95%" align=center border=0>
  <TR height=20>
    <TD></TD></TR>
  <TR height=22>
    <TD style="PADDING-LEFT: 20px; FONT-WEIGHT: bold; COLOR: #ffffff"
        align="center" background=images/title_bg2.jpg>您的相关信息</TD></TR>
  <TR bgColor=#ecf4fc height=12>
    <TD></TD></TR>
  <TR height=20>
    <TD></TD></TR></TABLE>
<TABLE cellSpacing=0 cellPadding=2 width="95%" align=center border=0>
  <TR>
    <TD align=right width=100>登陆帐号：</TD>
    <TD style="COLOR: #880000">${user.doctor.name}</TD></TR>
  <TR>
    <TD align=right>真实姓名：</TD>
    <TD style="COLOR: #880000">${user.doctor.name}</TD></TR>
  <TR>
    <TD align=right>注册时间：</TD>
    <TD style="COLOR: #880000">${user.doctor.create_date}</TD></TR>
  <TR>
    <TD align=right>地址(xx省xx市)：</TD>
    <TD style="COLOR: #880000">${user.doctor.address_province}省${user.doctor.address_city}市</TD></TR>
  <TR>
    <TD align=right>联系电话：</TD>
    <TD style="COLOR: #880000">${user.doctor.mobile_phone}</TD></TR>
  <TR>
    <TD align=right>上线时间：</TD>
    <TD style="COLOR: #880000"><%=new Date() %></TD></TR>
  </c:if>
  <%--医生版面结束--%>

  <%--管理员版面开始--%>
  <c:if test="${sessionScope.user.role_id==3}">
  <TD style="FONT-WEIGHT: bold; FONT-SIZE: 16px">${user.admin.name}</TD>
  </TR>
  <TR>
    <TD>欢迎进入网站管理中心！</TD></TR></TABLE></TD></TR>
<TR>
  <TD colSpan=3 height=10></TD></TR></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="95%" align=center border=0>
  <TR height=20>
    <TD></TD></TR>
  <TR height=22>
    <TD style="PADDING-LEFT: 20px; FONT-WEIGHT: bold; COLOR: #ffffff"
        align="center" background=images/title_bg2.jpg>您的相关信息</TD></TR>
  <TR bgColor=#ecf4fc height=12>
    <TD></TD></TR>
  <TR height=20>
    <TD></TD></TR></TABLE>
<TABLE cellSpacing=0 cellPadding=2 width="95%" align=center border=0>
  <TR>
    <TD align=right width=100>登陆帐号：</TD>
    <TD style="COLOR: #880000">${user.admin.name}</TD></TR>
  <TR>
    <TD align=right>真实姓名：</TD>
    <TD style="COLOR: #880000">${user.admin.name}</TD></TR>
  <TR>
    <TD align=right>注册时间：</TD>
    <TD style="COLOR: #880000">${user.admin.create_date}</TD></TR>
  <TR>
    <TD align=right>上线时间：</TD>
    <TD style="COLOR: #880000"><%=new Date() %></TD></TR>
  </c:if>
  <%--管理员版面结束--%>

</body>
</html>

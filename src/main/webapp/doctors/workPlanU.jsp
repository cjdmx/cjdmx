<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2018/7/10
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>医生工作计划</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/popcalendar.js"></script>
    <script type = "text/javascript">
    </script>
</head>
<body>
<center>
    <table height="10" border="0" >
        <tr>
            <td colspan = "11" align="center" size="3"><b>医生工作计划</b></td>
        </tr>
        <tr>
            <td align="center">计划名称:</td>
            <td>&nbsp;
                <input type="text" id="" size="30"><font color="red">&nbsp;&nbsp;*
            </td>
        <tr>
            <td align="center">开始时间:</td>
            <td>&nbsp;
                <input type="text" readonly name="PlanBeginDate" id="txtPlanBeginDate" maxlength="10" size="30">
                <img style="cursor:hand" align="absMiddle"
                     onClick="popUpCalendar(this, document.getElementById('txtPlanBeginDate'),'yyyy-mm-dd');return false;"
                     src="../images/date/images/ew_calendar.gif"
                     width="16" height="16"
                >
                <font color="red">&nbsp;&nbsp;*
            </td>
        </tr>
        <tr>
            <td align="center">结束时间:</td>
            <td>&nbsp;
                <input type="text" readonly name="PlanEndDate" id="txtPlanEndDate" maxlength="10" size="30">
                <img style="cursor:hand" align="absMiddle"
                     onClick="popUpCalendar(this, document.getElementById('txtPlanEndDate'),'yyyy-mm-dd');return false;"
                     src="../images/date/images/ew_calendar.gif"
                     width="16" height="16"
                >
                <font color="red">&nbsp;&nbsp;*
            </td>
        </tr>

        <tr>
            <td align="center">是否延迟:</td>
            <td>&nbsp;
                <input type="radio" name="" value="是" checked>是&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" name="" value="否">否
            </td>
        </tr>
        <tr>
            <td align="center">计划内容:</td>
            <td colspan="3">&nbsp;
                <textarea rows="6" cols="30" id="txtAra" ></textarea></td>
        </tr>
        <tr>
            <td align="center">备注:</td>
            <td colspan="3">&nbsp;
                <textarea rows="6" cols="30" id="txtAra" ></textarea></td>
        </tr>
        <tr align="center">
            <td  colspan="4" >
                <img src="../images/btn_save.GIF" alt="保存" onclick="alert('login')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../images/btn_cancel.GIF" alt="取消" onclick="alert('login')">
            </td>
        </tr>
    </table>
</center>
</body>
</html>

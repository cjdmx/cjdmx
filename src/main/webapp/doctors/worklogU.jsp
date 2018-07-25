<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2018/7/10
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新工作日志</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/popcalendar.js"></script>
    <script type = "text/javascript">
    </script>
</head>
<body>
<center>
    <table height="10" border="0" >
        <tr>
            <td colspan = "11" align="center" size="3"><b>更新工作日志</b></td>
        </tr>
        <tr>
            <td align="center">日志名称:</td>
            <td>&nbsp;
                <input type="text" id="" size="30"><font color="red">&nbsp;&nbsp;*</font>
            </td>
        </tr>
        <tr>
            <td align="center">日志时间:</td>
            <td>&nbsp;
                <input type="text" readonly name="LogDate" id="txtLogDate" maxlength="10" size="30">
                <img style="cursor:hand" align="absMiddle"
                     onClick="popUpCalendar(this, document.getElementById('txtLogDate'),'yyyy-mm-dd');return false;"
                     src="../images/date/images/ew_calendar.gif"
                     width="16" height="16"
                >
                <font color="red">&nbsp;&nbsp;*</font>
            </td>
        </tr>
        <tr>
            <td align="center" valign="top">工作总结:</td>
            <td colspan="3">&nbsp;
                <textarea rows="6" cols="30" id="txtAra" ></textarea></td>
        </tr>

        <tr>
            <td align="center" valign="top">备注:</td>
            <td colspan="3">&nbsp;
                <textarea rows="6" cols="30"  ></textarea></td>
        </tr>
        <tr>
            <td align="center">附件:</td>
            <td colspan="3">&nbsp;
                <input type="file" rows="6" cols="30"  ></textarea>
                <input type="button" value="上传" onclick="alert('上传')">
            </td>
        </tr>
        <tr align="center">
            <td  colspan="4" >
                <img src="../images/btn_update.GIF" alt="更新" onclick="alert('update')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../images/btn_return.GIF" alt="返回" onclick="alert('return')">
            </td>
        </tr>

    </table>
</center>
</body>
</html>







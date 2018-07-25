<%@ page import="java.text.DateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>医生工作计划</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/popcalendar.js"></script>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type = "text/javascript">
        $(function () {
            function resetButton(){

            }
            $("#savebtn").click(function () {
                $("#form1").submit();
            })
        })

    </script>
</head>
<body>
<form action="/workplan/saveWorkplan.action" enctype="multipart/form-data" method="post" id="form1">
    <center>
        <table height="10" border="0" >
            <tr>
                <td colspan = "11" align="center" size="3"><b>医生工作计划</b></td>
            </tr>
            <tr>
                <input type="hidden" name="doctor_id" value="${user.doctor.doctor_id}"/>
                <td align="center">计划名称:</td>
                <td>&nbsp;
                    <input type="text" id="name" size="30" name="name"><font color="red">&nbsp;&nbsp;*</font>
                </td>
            <tr>
                <td align="center">开始时间:</td>
                <td>&nbsp;
                    <input type="date" name="start_time" id="start_time" maxlength="10" size="30">
                    <font color="red">&nbsp;&nbsp;*</font>
                </td>
            </tr>
            <tr>
                <td align="center">结束时间:</td>
                <td>&nbsp;
                    <input type="date" name="end_time" id="end_time" maxlength="10" size="30">
                    <font color="red">&nbsp;&nbsp;*</font>
                </td>
            </tr>

            <tr>
                <td align="center">是否延迟:</td>
                <td>&nbsp;
                    <input type="radio" name="delay" value="是" >是&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="delay" value="否" checked>否
                </td>
            </tr>
            <tr>
                <td align="center">计划内容:</td>
                <td colspan="3">&nbsp;
                    <textarea rows="6" cols="30" id="content" name="content" ></textarea><font color="red">&nbsp;&nbsp;*</td>
            </tr>
            <tr>
                <td align="center">备注:</td>
                <td colspan="3">&nbsp;
                    <textarea rows="6" cols="30" id="remark"  name="remark"></textarea></td>
            </tr>
            <tr>
                <td>附件</td>
                <td>
                    <input type ="file" id="" size="30" name="file">
                </td>
                <td></td>
            </tr>
            <tr align="center">
                <td  colspan="4" >
                    <img src="../images/btn_save.GIF" alt="保存" id="savebtn">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../images/btn_cancel.GIF" alt="取消" onClick="resetButton()">
                </td>
            </tr>
        </table>
    </center>
</form>
</body>
</html>

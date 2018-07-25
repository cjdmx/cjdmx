<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2018/7/10
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>医生工作日志</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/popcalendar.js"></script>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type = "text/javascript">
        function saveButton()
        {
            $("#form1").submit();
            alert("保存成功！");
        }
        function resetButton()
        {

            document.forms[0].elements["logName"].value="";
            document.forms[0].elements["LogDate"].value="";
            document.forms[0].elements["logSummary"].value="";
            document.forms[0].elements["logDesc"].value="";
            document.forms[0].elements["filePath"].value="";
        }
    </script>
</head>
<body>
<form id="form1" enctype="multipart/form-data" method="post" action="/worklog/saveWorklog.action">
    <center>
        <table height="10" border="0" >
            <tr>
                <td colspan = "11" align="center" size="3"><b>医生工作日志</b></td>
            </tr>
            <tr>
                <td align="center">日志名称:</td>
                <td>&nbsp;
                    <input type="hidden" value="${user.doctor.doctor_id}" name="doctor"/>
                    <input type="text" id="name" size="30" name="name"><font color="red">&nbsp;&nbsp;*</font>
                </td>
            </tr>
            <tr>
                <td align="center">日志时间:</td>
                <td>&nbsp;
                    <input type="date" name="time" id="time" maxlength="10" size="30">
                    <font color="red">&nbsp;&nbsp;*</font>
                </td>
            </tr>
            <tr>
                <td align="center" valign="top">日志内容:</td>
                <td colspan="3">&nbsp;
                    <textarea rows="6" cols="30" id="summarization"  name="summarization"></textarea><font color="red">&nbsp;&nbsp;*</font></td>
            </tr>

            <tr>
                <td align="center" valign="top">备注:</td>
                <td colspan="3">&nbsp;
                    <textarea rows="6" cols="30" id="remark" name="remark" ></textarea></td>
            </tr>
            <tr>
                <td align="center">附件:</td>
                <td colspan="3">&nbsp;
                    <input type="file" rows="6" cols="30" id="file" name="file" ></textarea>
                </td>
            </tr>
            <tr align="center">
                <td  colspan="4" >
                    <img src="../images/btn_save.GIF" alt="保存" onClick="saveButton()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../images/btn_cancel.GIF" alt="取消" onClick="resetButton()">
                </td>
            </tr>

        </table>
    </center>
</form>
</body>
</html>


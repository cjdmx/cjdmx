<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改医生工作日志</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/popcalendar.js"></script>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type = "text/javascript">
        function saveButton()
        {
            $("#form1").submit();
            alert("保存成功！");
        }
            function cancelButton()
            {
                document.forms[0].elements["logName"].value="";
                document.forms[0].elements["LogDate"].value="";
                document.forms[0].elements["logSummary"].value="";
                document.forms[0].elements["logDesc"].value="";
                document.forms[0].elements["logFile"].value="";
            }
    </script>
</head>
<body>
<form enctype="multipart/form-data" action="/worklog/saveWorklog.action" method="post" id="form1">
    <center>
        <table height="10" border="0" >
            <tr>
                <td colspan = "11" align="center"><b>医生工作日志修改</b></td>
            </tr>
            <tr>
                <td align="center">日志名称:</td>
                <td>&nbsp;
                    <input type="hidden" name="id" value="${worklog.id}">
                    <input type="text" id="" size="30" name="name" value="${worklog.name}"><font color="red">&nbsp;&nbsp;*</font>
                </td>
            </tr>
            <tr>
                <td align="center">日志时间:</td>
                <td>&nbsp;
                    <input type="date" name="time" id="time"   value="" maxlength="10" size="30">
                    <font color="red">&nbsp;&nbsp;*</font>
                </td>
            </tr>
            <tr>
                <td align="center" valign="top">工作总结:</td>
                <td colspan="3">&nbsp;
                    <textarea rows="6" cols="30" id="summarization"  name="summarization">${worklog.summarization}</textarea></td>
            </tr>

            <tr>
                <td align="center"  valign="top">备注:</td>
                <td colspan="3">&nbsp;
                    <textarea rows="6" cols="30" name="remark" >${worklog.remark}</textarea></td>
            </tr>
            <tr>
                <td align="center">附件:</td>
                <td colspan="3">&nbsp;
                    <input type="file" rows="6" cols="30"  name="file" value="">
                </td>
            </tr>
            <tr align="center">
                <td  colspan="4" >
                    <img src="../images/btn_save.GIF" alt="保存" onClick="saveButton()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../images/btn_cancel.GIF" alt="取消" onClick="cancelButton()">
                </td>
            </tr>

        </table>
    </center>
</form>
</body>
</html>




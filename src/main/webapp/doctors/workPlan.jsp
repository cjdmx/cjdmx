<%@ page import="com.ujiuye.hospital.bean.Doctorwordplan" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>医生工作计划</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/popcalendar.js"></script>
    <script type = "text/javascript">
        function closeButton()
        {
            window.close();
        }
        function cancelButton()
        {
            document.forms[0].elements["pname"].value="";
            document.forms[0].elements["PlanBeginDate"].value="";
            document.forms[0].elements["PlanEndDate"].value="";
            document.forms[0].elements["pcontext"].value="";
            document.forms[0].elements["pdesc"].value="";
            document.forms[0].elements["pfile"].value="";
            var delay=document.forms[0].elements["delay"];
            delay[0].checked=false;
            delay[1].checked=false;
        }
    </script>
</head>
<body>
<form action="/workplan/saveWorkplan.action" enctype="multipart/form-data" method="post" id="form1">
    <input type="hidden" value="${workplan.dwp_id}" name="dwp_id">
    <center>
        <table height="10" border="0" >
            <tr>
                <td colspan = "11" align="center" size="3"><b>医生工作计划修改</b></td>
            </tr>
            <tr>
                <td align="center">计划名称:</td>
                <td>&nbsp;
                    <input type="text" id="" size="30"  name="name" value="${workplan.name}"><font color="red">			</td>
            <tr>
                <td align="center">开始时间:</td>
                <td>&nbsp;
                    <%
                        Doctorwordplan workplan = (Doctorwordplan) request.getAttribute("workplan");
                        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
                        String starformat = format.format(workplan.getStart_time());
                        String endformat = format.format(workplan.getEnd_time());
                    %>
                    <input type="text" readonly name="start_time" id="txtPlanBeginDate" maxlength="10" size="30"  value="<%=starformat%>"/>
                    <img style="cursor:hand" align="absMiddle"
                         onClick="popUpCalendar(this, document.getElementById('txtPlanBeginDate'),'yyyy-mm-dd');return false;"
                         src="../images/date/images/ew_calendar.gif"
                         width="16" height="16"
                    >
                    <font color="red">&nbsp;&nbsp;*			</td>
            </tr>
            <tr>
                <td align="center">结束时间:</td>
                <td>&nbsp;
                    <input type="text"  name="start_time" id="txtPlanEndDate" maxlength="10" size="30" value="<%=endformat%>">
                    <img style="cursor:hand" align="absMiddle"
                         onClick="popUpCalendar(this, document.getElementById('txtPlanEndDate'),'yyyy-mm-dd');return false;"
                         src="../images/date/images/ew_calendar.gif"
                         width="16" height="16"
                    >
                    <font color="red">&nbsp;&nbsp;*			</td>
            </tr>

            <tr>
                <td align="center">是否延迟:</td>
                <td>&nbsp;
                    <input type="radio" name="delay" value="是" >是&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="delay" value="否">否			</td>
            </tr>
            <tr>
                <td align="center" valign="top" >计划内容:</td>
                <td colspan="3">&nbsp;
                    <textarea rows="6" cols="30" id="txtAra" name="content" >${workplan.content}</textarea><font color="red">&nbsp;&nbsp;*	</td>
            </tr>
            <tr>
                <td align="center" valign="top">备注:</td>
                <td colspan="3">&nbsp;
                    <textarea rows="6" cols="30" id="txtAra"  name="remark" >${workplan.remark}</textarea></td>
            </tr>
            <tr>
                <td>附件:</td>
                <td>
                    <input type ="file" id="" size="30" name="file">
                </td>
            </tr>
            <tr align="center">
                <td  colspan="4" ><img src="../images/btn_save.GIF" alt="保存" onclick="submit()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../images/btn_cancel.GIF" alt="取消" onClick="cancelButton()">			</td>
            </tr>
        </table>
    </center>
</form>
</body>
</html>


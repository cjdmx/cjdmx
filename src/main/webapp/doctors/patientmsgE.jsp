<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2018/7/10
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>查询病例</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type = "text/javascript">
        function dateUtil(arg) {
            if (arg == "" | arg == null) {
                return "";
            }
            var date = new Date(arg);
            var str = date.getFullYear()+"-"+date.getMonth()+"-"+date.getDate();
            return str;
        }
        function cancelButton()
        {
            document.forms[0].elements["pname"].value="";
            document.forms[0].elements["styear"].value="";
            var sex=document.forms[0].elements["rdclass"];
            sex[0].checked=false;
            sex[1].checked=false;
        }
        function selectButton()
        {
            document.getElementById("tableMsg").style.display="block";
            $.ajax({
                url:"/leavemsg/searchLeavemsg.action" ,
                data:$("#form1").serialize(),
                dataType:"json",
                success:function (retultData) {
                    $("#table tr:gt(0)").remove();
                    $(retultData).each(function (index, item) {
                        info="<tr>\n" +
                            "                    <td align=\"center\">"+item.patient.patient_name+"</td>\n" +
                            "                    <td align=\"center\">"+dateUtil(item.created_date)+"</td>\n" +
                            "                    <td onClick=\"window.open('../leavemsg/gopatientmsg.action?id="+item.leave_id+"','_blank')\" align=\"center\" style=\"cursor:hand\">"+item.message_title+"</td>\n" +
                            "\n" +
                            "                    <td  colspan=\"4\" align=\"center\">\n" +
                            "                        <a href='/leavemsg/replymsg.action?patient_id="+item.patient.patient_id+"'>回复留言</a>&nbsp;&nbsp;\n" +
                            "                        <img src=\"../images/link_delete.gif\" alt=\"删除\" onClick=\"del(item.leave_id)\">\n" +
                            "                </tr>"
                        $("#table").append(info);
                    })
                }
            });
        }

        function del(leave_id) {
            alert(leave_id)
        }

        function updateP(patient_id)
        {
            alert(doctor_id,patient_id)
            document.location="../doctors/replymsg.jsp";
        }
    </script>
</head>
<body>
<form id="form1">
    <input type="hidden" name="doctor_id" id="doctor" value="${user.doctor.doctor_id}">
    <center>
        <table height="20" border="0" >
            <tr>
                <td colspan = "11" align="center" size="3"><b>患者留言查询</b></td>
            </tr>
            <tr>
                <td align="left">姓&nbsp;&nbsp;名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                <td>&nbsp;
                    <input type="text" size="30" name="patient_name"><font color="red">&nbsp;&nbsp;*	</font>
                </td>
            <tr>
                <td align="left">性&nbsp;&nbsp;别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                <td>&nbsp;
                    <input type="radio" name="sex" value="男" >男&nbsp;
                    <input type="radio" name="sex" value="女">女&nbsp;
                </td>
            <tr>
                <td align="left">年龄区间&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                <td>&nbsp;
                    <select name="ageScope" id="" onchange=fillyear(this.value)>
                        <option value="">=年龄==</option>
                        <option value="1-10">1-10</option>
                        <option value="11-20">11-20</option>
                        <option value="21-30">21-30</option>
                        <option value="31-40">31-40</option>
                        <option value="41-50">41-50</option>
                        <option value="51-60">51-60</option>
                        <option value="61-70">61-70</option>
                        <option value="71-80">71-80</option>
                        <option value="81-90">81-90</option>
                        <option value="91-100">91-100</option>
                    </select>			</td>
            </tr>
            <tr align="center">
                <td  colspan="4" >
                    <img src="../images/btn_search.gif" alt="查询" onClick="selectButton()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../images/btn_cancel.GIF" alt="取消" onClick="cancelButton()">			</td>
            </tr>
        </table>
        <p><p><p><p><p>
        <div style="display:none" id="tableMsg">
            <table id="table" border="1" width="700">
                <tr>
                    <td align="center">姓名</td>

                    <td align="center">留言日期</td>
                    <td align="center">留言标题</td>

                    <td width="100" colspan="2" align="center">操作</td>
                </tr>
                <tr>
                    <td align="center" colspan="5">没有留言</td>
                </tr>
            </table>
        </div>
    </center>
</form>
</body>
</html>

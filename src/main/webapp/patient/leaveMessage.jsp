<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2018/7/10
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>患者留言</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script>

        $(function () {
            $("#dept").change(function () {
                var dept_id = $(this).val();
                $.ajax({
                    url:"/doctor/getDoctorByDeptId.action?dept_id="+dept_id,
                    dataType:"json",
                    success:function (resultData) {
                        $("#doctor option").remove();
                        $(resultData).each(function (index, item) {
                            var info = "<option value="+item.doctor_id+">"+item.name+"</option>"
                            $("#doctor").append(info);
                        })
                    }
                });
            })
        })

        $(function () {
            $.ajax({
                url:"/admin/getAllDepartment.action",
                dataType:"json",
                success:function (resultData) {
                    $(resultData).each(function (index,item) {
                        var info="<option value="+item.dept_id+">"+item.dept_name+"</option>";
                        $("#dept").append(info);
                    })
                }
            })
        })

        function resetButton()
        {
            document.forms[0].elements["uname"].value="";
            document.forms[0].elements["science"].value="";
            document.forms[0].elements["msgtoperson"].value="";
            document.forms[0].elements["title"].value="";
            document.forms[0].elements["context"].value="";
        }
        function saveButton()
        {
            alert("留言成功！");
            document.forms[0].submit();
        }
    </script>
</head>
<body>
<center>
    <form action="/leavemsg/save.action" method="post">
        <input type="hidden" name="patient_id" value="${user.patient.patient_id}">
        <table>
            <th colspan="2">患者留言</th>
            <tr>
                <td >
                    科室名称                    </td>
                <td>
                    <select property="" id="dept" name="dept_id" >
                        <option value="">请选择科室</option>
                    </select>
                <td >	 </tr>
            <tr>
                <td>医生：</td>
                <td>
                    <select id="doctor" name="doctor_id">
                        <option>请先选择科室</option>
                    </select>		</td>
            </tr>
            <tr>
                <td>留言标题：</td>
                <td><input type="text" id="msgName" size="30" name="message_title"/><font color="red">*</font></td>
            </tr>
            <tr>
                <td>留言内容：</td>
                <td><textarea cols="45" rows="6" name="message_content"></textarea></td>
            </tr>
            <tr align="center">
                <td  colspan="2" >
                    <img src="../images/btn_save.GIF" alt="保存"  onClick="saveButton()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../images/btn_cancel.GIF" alt="取消" onClick="resetButton()">			</td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>

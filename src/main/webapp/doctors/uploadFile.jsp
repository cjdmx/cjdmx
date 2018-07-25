<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2018/7/10
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上传模板</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type = "text/javascript">
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
        function cancelButton()
        {
            document.forms[0].elements["name"].value="";
            document.forms[0].elements["dept"].value="";
            document.forms[0].elements["type"].value="";
            document.forms[0].elements["file"].value="";
            document.forms[0].elements["desc"].value="";
        }
    </script>
</head>
<body>
<form enctype="multipart/form-data" method="post" id="form1" action="/doctor/saveFormWork.action">
    <center>
        <table height="10" border="0" >
            <tr>
                <td colspan = "11" align="center" size="3"><b>模板上传</b></td>
            </tr>
            <tr>
                <td align="center">模板名称:</td>
                <td>&nbsp;
                    <input type="text" size="30" name="name"><font color="red">&nbsp;&nbsp;*</font>
                </td>
            </tr>
            <tr><td align="center">所属科室</td><td>&nbsp;
                <select property="abc" id="dept" name="dept_id" >
                </select></td>
            </tr>
            <tr>
                <td align="center">模板类型:</td>
                <td>&nbsp;
                    <select name="type" >
                        <option value="治疗模板">治疗模板</option>
                        <option value="检查模板">检查模板</option>
                        <option value="培训模板">培训模板</option>
                    </select><font color="red">&nbsp;&nbsp;*</font>
                </td>
            </tr>
            <tr >
                <td align="center" >上传的文件:</td>
                <td valign="botton">&nbsp;
                    <input type ="file" id="" size="30" name="file">
                </td>
            </tr>
            <tr>
                <td align="center" valign="botton">模板描述:</td>
                <td colspan="3">&nbsp;
                    <textarea rows="6" cols="30" id="txtAra"  name="directions"></textarea></td>
            </tr>
            <tr align="center">
                <td  colspan="4" >
                    <img src="../images/btn_save.GIF" alt="保存" onClick="submit()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../images/btn_cancel.GIF" alt="取消" onClick="cancelButton()">
                </td>
            </tr>
        </table>
    </center>
</form>
</body>
</html>



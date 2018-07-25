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
    <title>医生工作日志查询</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/popcalendar.js"></script>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script language="javascript">
        function update(){
            alert("跳转到修改界面");
            window.location.href="modifyLog.html";
        }
    </script>
</head>
<body>
<center>
    <table height="10" border="0" >
        <tr>
            <td colspan = "11" align="center" size="3"><b>下载模板查询</b></td>
        </tr>
        <tr>
            <td align="center">所属科室:</td>
            <td>&nbsp;
                <select name="modeltype" >
                    <option value="眼科">科室</option>
                    <option value="眼科">眼科</option>
                    <option value="胸科">胸科</option>
                    <option value="外科">外科</option>
                    <option value="内科">内科</option>
                    <option value="肛肠科">肛肠科</option>
                </select><font color="red">&nbsp;&nbsp;*</font>
            </td>
        </tr>
        <tr>
            <td align="center">模板类型:</td>
            <td>&nbsp;
                <select name="modeltype" >
                    <option value="眼科">类型</option>
                    <option value="眼科">眼科</option>
                    <option value="胸科">胸科</option>
                    <option value="外科">外科</option>
                    <option value="内科">内科</option>
                    <option value="肛肠科">肛肠科</option>
                </select><font color="red">&nbsp;&nbsp;*</font>
            </td>
        </tr>

        <tr>
            <td colspan="2" align="center">
                <img src="../images/btn_search.gif" alt="查询" onclick="alert('query')">&nbsp;&nbsp;
                <img src="../images/btn_cancel.GIF" alt="取消" onclick="alert('cancel')">
            </td>

        </tr>
    </table><p>

    <table border="1" >

        <tr>
            <td align="center">模板名称</td>
            <td align="center" colspan="3">模板描述</td>

            <td align="center" colspan="1">下载</td>

        </tr>

        <tr>
            <td align="center">给张三峰打针</td>
            <td colspan="3">&nbsp;
                <textarea rows="5" cols="30" id="txtAra" readonly>描述</textarea></td>

            <td align="center" colspan="1">
                <img src="../images/link_update.gif" alt="更新" onclick="alert('下载模板');">&nbsp;&nbsp;

            </td>

        </tr>
    </table>

</center>
</body>
</html>




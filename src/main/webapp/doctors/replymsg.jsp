<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
</head>
<body>
<form action="/leavemsg/replymsg.action" method="post">
    <input type="hidden" name="doctor_id" value="${user.doctor.doctor_id}"/>
    <input type="hidden" name="patient_id" value="${patient_id}"/>
    <center>
        <table><tr><td align="center" colspan="2"><b>留言回复</b></td></tr>

            <tr>
                <td>
                    留言标题:
                </td>
                <td>
                    <input type="text" name="messagetitle"/><font  color="red">*
                </td>
            </tr>
            <tr>
                <td>
                    留言内容:
                </td>
                <td>
                    <textarea rows="6" name="messagecontent" cols="30" id="txtAra" ></textarea><font  color="red">*
                </td>
            </tr>
            <tr align="right">
                <td  align="center">
                    <input type="submit" name="submit"  value="回复" onClick="alert('回复成功！')" >
                    <input type="reset" value="重置" >
                </td>
            </tr>
        </table>
    </center>
</form>
</body>
</html>
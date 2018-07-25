<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <title>模板修改密码</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script>
        function saveButton()
        {
            $("form:first").submit();
            alert("密码修改成功！");
        }
        function cancelButton()
        {

            document.forms[0].elements["pass"].value="";
            document.forms[0].elements["newPass"].value="";
            document.forms[0].elements["renewPass"].value="";
        }
    </script>
</head>
<body>
<form action="/user/changePassword.action">
    <table align="center" border="0" width="300" >
        <tr><td align="center" colspan="2"><b>密码修改</b></td></tr>
        <tr>
            <td>
                旧密码:
            </td>
            <td>
                <input type="password"  name="oldpassword"/>
            </td>
        </tr>
        <tr>
            <td>
                新密码:
            </td>
            <td>
                <input type="password"  name="newpassword"/>
            </td>
        </tr>
        <tr>
            <td>
                确认密码:
            </td>
            <td>
                <input type="password" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <img src="./images/btn_save.GIF" alt="保存" onClick="saveButton()"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="./images/btn_cancel.GIF" alt="取消" onClick="cancelButton()">
            </td>
            <td>
            </td>
        </tr>
    </table>
</form>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2018/7/10
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script>
        function resetButton()
        {
            document.forms[0].elements["desc"].value="";
        }
    </script>
</head>
<body>
<form action="/medical/updateDirctions.action" method="post">
    <center>
        <table>
            <tr><td align="center"><b>病例修改</b></td></tr>
            <tr>
                <td>
                    病例描述
                </td>
                <td>
                    <input type="hidden" value="${medical.id}" name="id">
                    <textarea rows="4" cols="16" name="directionDetail">${medical.dirctions}</textarea>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="修改"/>
                    <input type="button" value="重置" onClick="resetButton()"/>
                </td>
            </tr>
        </table>
    </center>
</form>
</body>
</html>

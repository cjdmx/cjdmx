<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2018/7/10
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title></title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/popcalendar.js"></script>
</head>
<body>
<form >

    <center>
        <table >
            <tr>
                <td>
                    <h1>${doctor.name} ${doctor.positiontitle.position_name}</h1>
                </td>
            </tr>
            <tr>
                <td>
                    ${doctor.positiontitle.position_standard}
                </td>
            </tr>
        </table>
        <p>
        <table>
            <tr>
                <td width="600">
                    ${doctor.desc_context}
                </td>
            </tr>

        </table>
    </center>
</form>
</body>
</html>


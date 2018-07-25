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
            <tr align="center">
                <td>
                    <%--患者留言:--%>
                </td>
            </tr>

            <tr valign="top">
                <td align="center">
                    ${leavemsg.message_title}

                </td>
            </tr>
            <tr>
                <td  width="600" height="110">
                    ${leavemsg.message_content}
                </td>
            </tr>


        </table>
    </center>
</form>
</body>
</html>

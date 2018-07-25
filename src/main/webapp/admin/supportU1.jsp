<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>模板维护基本表</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript"></script>
</head>
<body>
<form action="/admin/updateResume.action"><table align="center" width="300">
    <input type="hidden" name="resume_id" value="${resume.resume_id}"/>
    <tr><td>资历名</td><td><input type="text" name="resume_name" value="${resume.resume_name}"></td></tr>
    <tr><td>资历标准</td><td>
        <textarea name="resume_standard">${resume.resume_standard}</textarea>
    <tr><td align="center"><input type="submit" value="提交"></td><td><input type="reset" value="重置" ></td></tr>
</table></form>
</body>
</html>

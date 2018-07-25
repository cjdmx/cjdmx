<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2018/7/10
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>模板维护基本表</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type = "text/javascript">


        function queryMsg()
        {
            $.ajax({
                url:"/admin/getResumeByName.action?resume_name="+$("#resume_name").val(),
                dataType:"json",
                success:function (result) {
                    var name;
                    var id;
                    var standard;
                    name=result.resume_name;
                    standard=result.resume_standard;
                    id=result.resume_id;
                    info="<table border=\"1\" align=\"center\" width=\"300\">\n" +
                        "            <tr><td>资历名</td><td>资历标准</td><td>操作</td></tr>\n" +
                        "            <tr><td>"+name+"</td><td>"+standard+"</td><td  colspan=\"2\" align=\"center\">\n" +
                        "                <img src=\"../images/link_update.gif\" alt=\"更新\" onClick=\"updateP("+id+",'"+name+"','"+standard+"')\">&nbsp;&nbsp;\n" +
                        "                <img src=\"../images/link_delete.gif\" alt=\"删除\" onClick=\"deleteP("+id+")\">\n" +
                        "            </td></tr>\n" +
                        "        </table>";
                    $("#tableMsg table").remove();
                    $("#tableMsg").append(info);
                }
            })
        }

        function deleteP(id) {
            document.location="/admin/deleteResumeById.action?resume_id="+id;
        }

        function updateP(id,name,standard)
        {
            document.location="/admin/resumeReturn.action?resume_id="+id+"&resume_name="+name+"&resume_standard="+standard;
        }
    </script>
</head>
<body>
<form>
    <table align="center">
        <tr><td>资历名</td>
            <td><input type="text" id="resume_name" name="resume_name"></td>
        </tr>
        <tr><td> <img src="../images/btn_search.gif" alt="查询" onClick="queryMsg()"></td></tr>
    </table>
    <div id="tableMsg">
    </div>
</form>
</body>
</html>

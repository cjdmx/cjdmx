<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2018/7/10
  Time: 15:09
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
                url:"/admin/getPositionByName.action?position_name="+$("#position_name").val(),
                dataType:"json",
                success:function (result) {
                    var name=result.position_name;
                    var standard=result.position_standard;
                    var id=result.position_id;
                    info="<table border=\"1\" align=\"center\" width=\"300\">\n" +
                        "            <tr><td>职称名</td><td>职称标准</td><td>操作</td></tr>\n" +
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
        function deleteP(position_id) {
            document.location="/admin/deletePositionById.action?position_id="+position_id;
        }
        function updateP(id,name,standard)
        {
            document.location="/admin/positionReturn.action?position_id="+id+"&position_name="+name+"&position_standard="+standard;
        }
    </script>
</head>
<body>
<form id="form1" action="/admin/getPositionByName.action">
    <table align="center">
        <tr><td>职称名</td>
            <td><input id="position_name" name="position_name" type="text"></td>
        </tr>
        <tr><td> <img src="../images/btn_search.gif" alt="查询" onClick="queryMsg()"></td></tr>
    </table>
    <div  id="tableMsg">

    </div>
</form>
</body>
</html>

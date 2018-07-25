<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>医生工作计划查询</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/popcalendar.js"></script>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type = "text/javascript">



        function search() {
            $.ajax({
                url:"/workplan/searchWorkplan.action",
                data:$("#form1").serialize(),
                success:function (result) {
                    $("#table tr:gt(0)").remove();
                    $(result).each(function (index, item) {
                        var path = item.accesssorytitle;
                        if (path==null){
                            path="";
                        }
                        info="                <tr>\n" +
                            "                    <td align=\"center\">"+item.name+"</td>\n" +
                            "                    <td align=\"center\">"+dateUtil(item.start_time)+"</td>\n" +
                            "                    <td align=\"center\">"+dateUtil(item.end_time)+"</td>\n" +
                            "                    <td align=\"center\">"+item.content+"</td>\n" +
                            "                    <td align=\"center\">"+item.remark+"</td>\n" +
                            "                    <td>\n" +
                            "                        <a href=\"/user/download.action?filepath="+item.accessoriness+"\">"+path+"</a>\n" +
                            "                    </td>\n" +
                            "                    <td align=\"center\" colspan=\"2\">\n" +
                            "                        <img src=\"../images/link_update.gif\" alt=\"更新\" onClick=\"update("+item.dwp_id+")\">&nbsp;&nbsp;\n" +
                            "                        <img src=\"../images/link_delete.gif\" class='del' alt=\"删除\" onClick=\"del("+item.dwp_id+")\" >\n" +
                            "                    </td>\n" +
                            "                </tr>";
                        $("#table").append(info);
                    })
                }
            });
            document.getElementById("tableMsg").style.display="block";
        }

        function del(id) {
            $.ajax({
                url:"/workplan/deleteWorkplan.action",
                dataType:"json",
                data:{"dwp_id":id},
                success:function (result) {
                    if(result){
                        alert("删除成功")
                        search();
                    }else {
                        alert("删除失败")
                    }
                }
            })
        }
        function dateUtil(arg) {
            if (arg == "" | arg == null) {
                return "";
            }
            var date = new Date(arg);
            var str = date.getFullYear()+"-"+date.getMonth()+"-"+date.getDate();
            return str;
        }
        function update(id)
        {
            document.location="/workplan/goUpdateWrokplan.action?dwp_id="+id;
        }
        function cancleButton()
        {
            document.forms[0].elements["pname"].value="";
            document.forms[0].elements["PlanBeginDate"].value="";
            document.forms[0].elements["PlanEndDate"].value="";
        }
    </script>
</head>
<body>
<form id="form1" method="post" enctype="multipart/form-data">
    <center>
        <table height="10" border="0" >
            <tr>
                <td colspan = "11" align="center" size="3"><b>医生工作计划查询</b></td>
            </tr>
            <tr>
                <td align="center">&nbsp;计划名称:</td>
                <td>&nbsp;
                    <input type="text" id="name" size="30" name="name">
                </td>
            <tr>
                <td align="center">&nbsp;开始时间:</td>
                <td>&nbsp;
                    <input type="date" name="star_date" id="star_date" maxlength="10" size="30">
                </td>
            </tr>
            <tr>
                <td align="center">&nbsp;结束时间:</td>
                <td>&nbsp;
                    <input type="date" name="end_date" id="end_date" maxlength="10" size="30">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <img src="../images/btn_search.gif" alt="查询" id="searchbtn" onclick="search()">&nbsp;&nbsp;
                    <img src="../images/btn_cancel.GIF" alt="取消" onClick="cancleButton()">
                </td>

            </tr>
        </table><p>
        <div style="display:none" id="tableMsg">
            <table id="table" border="1" >

                <tr>
                    <td align="center">计划名称</td>
                    <td align="center">开始时间</td>
                    <td align="center">结束时间</td>
                    <td align="center">计划内容</td>
                    <td align="center">备注	   </td>
                    <td align="center">附件	   </td>
                    <td align="center" colspan="2">操作</td>
                </tr>

                <tr>
                    <td align="center">给张三峰打针</td>
                    <td align="center">2008-09-10</td>
                    <td align="center">2008-09-15</td>
                    <td align="center">用大头针打，慢慢的往里打</td>
                    <td align="center">打死为止</td>
                    <td>  <a href="#" onclick=document.execCommand("saveAs")>详细计划</a> </td>
                    <td align="center" colspan="2">
                        <img src="../images/link_update.gif" alt="更新" onclick="updateButton()">&nbsp;&nbsp;
                        <img src="../images/link_delete.gif" alt="删除" onClick="alert('remove')">
                    </td>
                </tr>
            </table>
        </div>
    </center>
</form>
</body>
</html>


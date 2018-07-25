<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>医生工作日志查询</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/popcalendar.js"></script>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type = "text/javascript">

        function update(id){
            self.location.href = "/worklog/goUpdateWorklog.action?id="+id;
        }
        function dateUtil(arg) {
            if (arg == "" | arg == null) {
                return "";
            }
            var date = new Date(arg);
            var str = date.getFullYear()+"-"+date.getMonth()+"-"+date.getDate();
            return str;
        }
        function del(id) {
            $.ajax({
                url:"/worklog/deleteWorklog.action",
                dataType:"json",
                data:{"id":id},
                success:function (result) {
                    if(result){
                        alert("删除成功")
                        searchLog();
                    }else {
                        alert("删除失败")
                    }
                }
            })
        }
        function searchLog()
        {
            $.ajax({
                url:"/worklog/searchWorklog.action",
                data:$("#form1").serialize(),
                success:function (result) {
                    $("#table tr:gt(0)").remove();
                    $(result).each(function (index, item) {
                        var path = item.accessorytitle;
                        if (path==null){
                            path="";
                        }
                        info="                <tr>\n" +
                            "                    <td align=\"center\">"+item.name+"</td>\n" +
                            "                    <td align=\"center\">"+dateUtil(item.time)+"</td>\n" +
                            "                    <td align=\"center\">"+item.summarization+"</td>\n" +
                            "                    <td align=\"center\">"+item.remark+"</td>\n" +
                            "                    <td>\n" +
                            "                        <a href=\"/user/download.action?filepath="+item.accessoriness+"\">"+path+"</a>\n" +
                            "                    </td>\n" +
                            "                    <td align=\"center\" colspan=\"2\">\n" +
                            "                        <img src=\"../images/link_update.gif\" alt=\"更新\" onClick=\"update("+item.id+")\">&nbsp;&nbsp;\n" +
                            "                        <img src=\"../images/link_delete.gif\" class='del' alt=\"删除\" onClick=\"del("+item.id+")\" value="+item.id+">\n" +
                            "                    </td>\n" +
                            "                </tr>";
                        $("#table").append(info);
                    })
                }
            })
            document.getElementById("tableLog").style.display="block";

        }
        function cancleButton()
        {
            $("#name").val("")
            $("#time").val("")
        }
    </script>
</head>
<body>
<form id="form1">
    <center>
        <table height="10" border="0" >
            <tr>
                <td colspan = "11" align="center" size="3"><b>医生工作日志查询</b></td>
            </tr>
            <tr>
                <td align="center">&nbsp;日志名称:</td>
                <td>&nbsp;
                    <input type="text" id="name" size="30" name="name">
                </td>
            <tr>
                <td align="center">&nbsp;日志时间:</td>
                <td>&nbsp;
                    <input type="date" name="time" id="time" maxlength="10" size="30">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <img src="../images/btn_search.gif" alt="查询" onClick="searchLog()">&nbsp;&nbsp;
                    <img src="../images/btn_cancel.GIF" alt="取消" onClick="cancleButton()">
                </td>

            </tr>
        </table><p>
        <div style="display:none" id="tableLog">
            <table id="table" border="1" >

                <tr>
                    <td align="center">日志名称</td>
                    <td align="center">日志时间</td>
                    <td align="center">日志内容</td>
                    <td align="center">备注	   </td>
                    <td align="center">附件</td>
                    <td align="center" colspan="2">操作</td>
                </tr>
            </table>
        </div>
    </center>
</form>
</body>
</html>








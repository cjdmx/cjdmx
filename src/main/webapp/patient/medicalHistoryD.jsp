<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>模板查询</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script>
        function downloadButton()
        {
            alert("下载");

        }

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
        <input type="hidden" name="patient_id" value="${patient.patient_id}">
        <table border="1" width="500">
            <tr><td align="center" colspan="3"><b>模板查询</b></td></tr>
            <tr>
                <td align="right">
                    科室名称
                </td>
                <td align="center">
                    <select id="dept" property="" name="dept_id" >
                        <option value="">任意</option>
                    </select>
                <td align="center" rowspan="2" >
                    <img src="../images/btn_search.gif" alt="查询" onClick="selectButton()"/>
                </td>
            </tr>

            <tr>
                <td align="right">模板类型：</td>
                <td align="center">
                    <select name="type">
                        <option value="">任意</option>
                        <option value="治疗模板">治疗模板</option>
                        <option value="检查模板">检查模板</option>
                        <option value="培训模板">培训模板</option>
                    </select>
                </td>

            </tr>
        </table>
        <br>
        <div style="display:none" id="tablemsg">
            <table id="table" border="1" width="500">
                <tr>

                    <td align="center"><b>模板名称</b></td>
                    <td align="center"><b>模板描述</b></td>
                    <td align="center"><b>操作</b></td>
                </tr>
                <tr>

                    <td align="center">标准模板</td>
                    <td align="center">模板描述…</td>
                    <td align="center" colspan="2"><a href="#" onclick=document.execCommand("saveAs")>下载</a></td>
                </tr>
                <tr>

                    <td align="center">新型模板</td>
                    <td align="center">模板描述…</td>
                    <td align="center" colspan="2"><a href="#" onclick=document.execCommand("saveAs")>下载</a></td>
                </tr>

            </table>
        </div>
    </form>
</center>
</body>
</html>

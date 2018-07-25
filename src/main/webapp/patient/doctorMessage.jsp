<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head><title></title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/popcalendar.js"></script>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script>
        $(function () {
            $.ajax({
                url:"/admin/getAllResume.action",
                dataType:"json",
                success:function (resultData) {
                    $(resultData).each(function (index,item) {
                        var info="<option value="+item.resume_id+">"+item.resume_name+"</option>";
                        $("#resume").append(info);
                    })
                }
            })
            $.ajax({
                url:"/admin/getAllDepartment.action",
                dataType:"json",
                success:function (resultData) {
                    $(resultData).each(function (index,item) {
                        var info="<option value="+item.dept_id+">"+item.dept_name+"</option>";
                        $("#deparment").append(info);
                    })
                }
            })
        })
        function queryButton()
        {
            document.getElementById("tablemsg").style.display="block";
            $.ajax({
                url:"/doctor/searchDoctor2.action",
                data:$("#form1").serialize(),
                dataType:"json",
                success:function (resultData) {
                    $("#table tr:gt(0)").remove()
                    $(resultData).each(function (index, item) {
                        info="<tr>\n" +
                            "                    <td align=\"center\">"+item.deparment.dept_name+"</td>\n" +
                            "                    <td align=\"center\">"+item.name+"</td>\n" +
                            "                    <td align=\"center\">"+item.sex+"</td>\n" +
                            "                    <td align=\"center\">"+item.resume.resume_name+"</td>\n" +
                            "                    <td align=\"center\">"+item.positiontitle.position_name+"</td>\n" +
                            "                    <td align=\"center\">"+item.office_phone+"</td>\n" +
                            "                    <td onClick=\"window.open('../patient/doctorBlurb.jsp','_blank')\" style=\"cursor:hand\">"+item.desc_context+"</td>\n" +
                            "                </tr>";
                        $("#table").append(info);
                    })
                }
            })
        }
        function resetButton()
        {

            document.forms[0].elements["science"].value="";
            document.forms[0].elements["doctorName"].value="";
            document.forms[0].elements["longevity"].value="";
        }
    </script>
</head>
<body>
<form action="" id="form1" method="post">
    <center>
        <table width="600" border="0" height="100">
            <tr>
                <td colspan="5" align="center"><b>
                    医生信息查询</b></td>
            </tr>
            <tr>
                <td align="center">
                    医生姓名
                    <input id="name" name="name">
                </td>
            </tr>
            <tr>
                <td align="center">
                    资历
                    <select property="" id="resume" name="resume_id" >
                        <option value="">任意</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td align="center">
                    科室名称
                    <select property="" id="deparment" name="dept_id" >
                        <option value="">任意</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="3" align="center">
                    <img src="../images/btn_search.gif" onClick="queryButton()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../images/btn_cancel.GIF" onClick="resetButton()">
                </td>
            </tr>
        </table>
        <p /></br>
        <p>
        <p>
        <div style="display:none" id="tablemsg">
            <table id="table" width="600" border="1" height="100">
                <tr>
                    <td colspan="10" align="center">
                        医生信息
                    </td>
                </tr>
                <tr>
                    <td align="center">科室名称</td>
                    <td align="center">医生姓名</td>
                    <td align="center">性&nbsp;&nbsp;&nbsp;&nbsp;别</td>
                    <td align="center">资&nbsp;&nbsp;&nbsp;&nbsp;历</td>
                    <td align="center">职&nbsp;&nbsp;&nbsp;&nbsp;称</td>
                    <td align="center">办公电话</td>
                    <td align="center">简&nbsp;&nbsp;&nbsp;&nbsp;介</td>
                </tr>
                <tr>
                    <td align="center" colspan="7">正在读取请稍后</td>
                </tr>
            </table>
        </div>
    </center>
</form>
</body>
</html>

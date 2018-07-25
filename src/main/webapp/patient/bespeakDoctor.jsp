<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2018/7/10
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title></title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/popcalendar.js"></script>
    <script>
        $(function () {
            $.ajax({
                url:"/admin/getAllDepartment.action",
                dataType:"json",
                success:function (resultData) {
                    $(resultData).each(function (index,item) {
                        var info="<option value="+item.dept_id+">"+item.dept_name+"</option>";
                        $("#deparment").append(info);
                    })
                }
            });

            $("#deparment").change(function () {
                var dept_id = $(this).val();
                $.ajax({
                    url:"/doctor/getDoctorByDeptId.action?dept_id="+dept_id,
                    dataType:"json",
                    success:function (resultData) {
                        $("#doctor option").remove();
                        $("#doctor").append("<option value=''>任意</option>");
                        $(resultData).each(function (index, item) {
                            var info = "<option value="+item.doctor_id+">"+item.name+"</option>"
                            $("#doctor").append(info);
                        })
                    }
                });
            })
        });

        function queryButton1()
        {
            document.getElementById("tablemsg").style.display="block";
            $.ajax({
                url:"/workTime/searchWorkTime.action",
                data:$("#form1").serialize(),
                dataType:"json",
                success:function (retultData) {
                    $("#table tr:gt(1)").remove();
                    $(retultData).each(function (index, item) {
                        var info = "<tr>\n" +
                            "                    <td align=\"center\">"+item.deparment.dept_name+"</td>\n" +
                            "                    <td align=\"center\">"+item.doctor.name+"</td>\n" +
                            "                    <td align=\"center\">"+item.monday+"</td>\n" +
                            "                    <td align=\"center\">"+item.tuesday+"</td>\n" +
                            "                    <td align=\"center\">"+item.wednesday+"</td>\n" +
                            "                    <td align=\"center\">"+item.thursday+"</td>\n" +
                            "                    <td align=\"center\">"+item.friday+"</td>\n" +
                            "                    <td align=\"center\">"+item.saturday+"</td>\n" +
                            "                    <td align=\"center\">"+item.sunday+"</td>\n" +
                            "                    <td align=\"center\"> <img src=\"../images/link_update.gif\" alt=\"预约\" onClick=\"updateP("+item.id+")\">&nbsp;&nbsp;\n" +
                            "                    </td>\n" +
                            "                </tr>"
                        $("#table").append(info)
                    })
                }
            })
        }
        function resetButton1()
        {

            document.forms[0].elements["scienceName"].value="";
            document.forms[0].elements["docName"].value="";
            document.forms[0].elements["startDate"].value="";
            document.forms[0].elements["endDate"].value="";
        }
        function updateP(id)
        {
            self.location.href = "/workTime/goBespeak.action?id="+id;
        }
    </script>
</head>
<body>
<form action="" id="form1" method="post">
    <center>
        <table width="662" border="0">
            <tr><td align="center" colspan="4"><b>预约查询</b></td></tr>
            <tr>
                <td width="97" align="center">
                    科室名称				</td>
                <td width="123" align="center">
                    医生姓名				</td>
                <td width="209" align="center">
                    开始时间				</td>
                <td width="205" align="center">
                    截止时间				</td>
            </tr>
            <tr>
                <td align="center">
                    <select property="deparment" id="deparment" name="dept_id" >
                        <option value="">请选择科室</option>
                    </select>				</td>
                <td align="center">
                    <select property="" id="doctor" name="doctor_id">
                        <option value="">请先选择医生姓名</option>
                    </select>				</td>
                <td align="center">
                    <input type="date" id="start_date" name="start_date">
                </td>
                <td align="center">
                    <input type="date" id="end_date" name="end_date"/>
                </td>
            </tr>
            <tr>
                <td colspan="6" align="center">
                    <img src="../images/btn_search.gif" onClick="queryButton1()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../images/btn_cancel.GIF" onClick="resetButton1()">					</td>
            </tr>
        </table>
        <p /></br>
        <p>
        <p>
        <div style="display:none" id="tablemsg">
            <table id="table" width="500" border="1">
                <tr>
                    <td colspan="10" align="center">
                        医生信息
                    </td>
                </tr>
                <tr>
                    <td align="center">科室名称</td>
                    <td align="center">医生姓名</td>
                    <td align="center">星期一</td>
                    <td align="center">星期二</td>
                    <td align="center">星期三</td>
                    <td align="center">星期四</td>
                    <td align="center">星期五</td>
                    <td align="center">星期六</td>
                    <td align="center">星期日</td>
                    <td align="center">预约信息</td>
                </tr>
                <tr>
                    <td colspan="10" align="center">正在加载请稍后</td>
                    </td>
                </tr>

            </table>
        </div>
    </center>
</form>
</body>
</html>

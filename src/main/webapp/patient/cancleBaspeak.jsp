<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2018/7/10
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head><title></title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <link type="text/css" href="D:/cvsClient/hospiproject/4-UI/css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/popcalendar.js">
    </script>
    <script>
        $(function () {
            $.ajax({
                url:"/workTime/getLogByPatientId.action?patient_id="+$("#patient_id").val(),
                dataType:"json",
                success:function (result) {
                    $(result).each(function (index, item) {
                        var info="<tr>\n" +
                            "            <td align=\"center\">"+item.dept.dept_name+"</td>\n" +
                            "            <td align=\"center\">"+item.doctor.name+"</td>\n" +
                            "            <td>\n" +
                            "                <input type=\"text\" readonly  maxlength=\"10\" size=\"30\" value=\""+dateUtil(item.worktime.start_date)+"\">\n" +
                            "            </td>\n" +
                            "            <td>\n" +
                            "                <input type=\"text\" readonly  maxlength=\"10\" size=\"30\" value=\""+dateUtil(item.worktime.end_date)+"\">\n" +
                            "            </td>\n" +
                            "                <td width=\"105\" align=\"center\">"+item.weekName+"</td>\n" +
                            "                <td align=\"center\"><img src=\"../images/btn_cancel.GIF\" alt=\"取消\" onClick=\"resetButton("+item.patient_id+","+item.doctor_id+",'"+item.bespeak_date+"')\"></td>\n" +
                            "            </tr>";
                        $("#table").append(info);
                    })
                }
            });
        })

        function dateUtil(arg) {
            if (arg == "" | arg == null) {
                return "";
            }
            var date = new Date(arg);
            var str = date.getFullYear()+"-"+date.getMonth()+"-"+date.getDate();
            return str;
        }

        function resetButton(patient_id,doctor_id,bespeak_date)
        {
            document.location.href="/workTime/doCancleBespeak.action?patient_id="+patient_id+"&doctor_id="+doctor_id+"&bespeak_date="+bespeak_date;
        }
    </script>
</head>
<body>
<form action="" method="post">
    <input type="hidden" id="patient_id" name="patient_id" value="${user.patient.patient_id}">
    <center>
        <table width="693" id="table" border="1" height="100">
            <tr>
                <td colspan="6" align="center">
                    医生信息
                </td>
            </tr>
            <tr>
                <td width="39" align="center">科室名称</td>
                <td width="34" align="center">医生姓名</td>
                <td width="209" align="center">开始日期</td>
                <td width="197" align="center">截止日期</td>
                <td width="105" align="center">预约时间</td>
                <td width="69" align="center">是否取消预约</td>
            </tr>

        </table>
    </center>
</form>
</body>
</html>
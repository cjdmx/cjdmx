<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title></title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/popcalendar.js"></script>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript">
        function doBespeak(){
            var weekSelect = $("#week option:selected").val();
            var max = $("#max").text();
            var count = $("#count").text();
            if(count>=max)
            {
                alert("已预约满");
                return;
            }
            if(weekSelect==null|weekSelect.length==0){
                alert("请选择预约时间");
                return;
            }
            $.ajax({
                url:"/workTime/doBespeak.action",
                data:$("#form1").serialize(),
                success:function (result) {
                    alert(result);
                }
            })
        }
    </script>
</head>
<body>
<form action="/workTime/doBespeak.action" method="post" id="form1">
    <center>

        <table width="500" border="0">
            <tr><td align="center" colspan="6"><b>预约确认</b></td></tr>
            <tr>
                <td align="center"><b>医生姓名</b></td>
                <td align="center"><b>科室名称</b></td>
                <td align="center"><b>预约时间</b></td>
                <td align="center"><b>预约人数</b></td>
                <td align="center"><b>可预约总人数</b></td>
                <td align="center"><b>预约</b></td>
            </tr>
            <tr>
                <input type="hidden" name="doctor_id" value="${worktime.doctor.doctor_id}"/>
                <input type="hidden" name="patient_id" value="${user.patient.patient_id}"/>
                <td align="center">${worktime.doctor.name}</td>
                <td align="center">${worktime.deparment.dept_name}</td>
                <td  align="center">
                    <select id="week" name="bespeak_date">
                        <option value="">座诊时间</option>
                        <c:forEach items="${worktime.weekMap}" var="item">
                            <option value="${item.key}">${item.value}</option>
                        </c:forEach>
                    </select>
                </td>
                <td id="count" align="center">${worktime.max.bespeak_amount}</td>
                <td id="max" align="center">${worktime.max.max_amoun}</td>
                <td align="center"><img id="sub" src="../images/btn_bespeak.jpg" alt="预约" onclick="doBespeak()" /></td>
            </tr>
        </table>
    </center>
</form>
</body>
</html>

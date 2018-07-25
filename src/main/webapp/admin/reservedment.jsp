<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>预约人数</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>

    <script type="text/javascript" src="../js/popcalendar.js"></script>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type = "text/javascript">
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


            $("#searchbtn").click(function (){
                var start = $("#start_date")
                var end = $("#end_date")
                var week = $("#work_date")
                var dept_id = $("#deparment")
/*                if(start.val().length==0|end.val().length==0|week.val().length==0|dept_id.val().length==0){
                    alert("请填写完整！");
                    return;
                }
                if(start<end){
                    alert("结束日期必须大于起始日期！")
                    return;
                }*/
                $("#doctor_id option").remove();
                $.ajax({
                    url:"/doctor/searchDoctorAjax.action",
                    dataType:"json",
                    data:$("#form1").serialize(),
                    success:function (result) {
                        $(result).each(function (index,item) {
                            var info = "<option value="+item.doctor_id+">"+item.name+"</option>";
                            $("#doctor_id").append(info);
                        })
                    }
                })
            })
        });

        function saveButton()
        {
            document.forms[0].submit();
            alert("保存成功！");
        }
        function resetButton()
        {
            document.forms[0].elements["startDate"].value="";
            document.forms[0].elements["endDate"].value="";
            document.forms[0].elements["docName"].value="";
            document.forms[0].elements["scienceName"].value="";
            document.forms[0].elements["time"].value="";
            document.forms[0].elements["personNo"].value="";
        }
    </script>
</head>
<body>
<form action="/workTime/UpdateMax.action" id="form1" method="post">
    <center>
        <table height="20" border="0" >
            <tr>
                <td colspan = "11" align="center" size="3"><b>预约人数设置</b></td>
            </tr>
            <tr>
                <td align="center">开始时间</td>
                <td align="center">
                    <input type="date" name="start_date" id="start_date">
                </td>
            </tr>
            <tr><td align="center">截止时间</td>
                <td align="center">
                    <input type="date"  name="end_date" id="end_date" maxlength="10" size="30"/>
                </td>
            </tr>
            <tr>
                <td align="center">科室:</td>
                <td>&nbsp;
                    <select id="deparment" property="" name="dept_id" >
                        <option value="">请选择科室</option>
                    </select>
                </td>
            </tr>

            <td align="center">坐诊时间:</td>
            <td>&nbsp;
                <select name="work_date" id="work_date">
                    <option value="">任意</option>
                    <option value="monday">星期一</option>
                    <option value="tuesday">星期二</option>
                    <option value="wednesday">星期三</option>
                    <option value="thursday">星期四</option>
                    <option value="friday">星期五</option>
                    <option value="saturday">星期六</option>
                    <option value="sunday">星期日</option>
                </select><font color="red">&nbsp;&nbsp;*</font>
            </td>
            </tr>

            <tr>
                <td></td>
                <td><input type="button" id="searchbtn" value="查询医生"/>
            </tr>

            <tr>
                <td align="center">坐诊医生:</td>
                <td>&nbsp;
                    <select name="doctor_id" id="doctor_id">
                        <option value="">请先选择医生</option>
                    </select><font color="red">&nbsp;&nbsp;*</font>
                </td>
            </tr>

            <tr>
                <td align="center">预约人数:</td>
                <td>&nbsp;
                    <input type="text" id="" size="20" name="number"><font color="red">&nbsp;&nbsp;*</font>
                </td>
            <tr>
            <tr>
                <td colspan="2" align="center"></br>
                    <img src="../images/btn_save.GIF" alt="保存" onClick="saveButton()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../images/btn_cancel.GIF" alt="取消" onClick="resetButton()"></td>
            </tr>
        </table>
    </center>
</form>
</body>
</html>

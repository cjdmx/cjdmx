<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>坐诊时间</title>
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
            })
        })
        function saveButton()
        {
            var start = $("#txtStartDate");
            var end = $("#txtEndDate");
            var selected = $("#week option:selected");
            if(start.val().length==0|end.val().length==0|selected.val().length==0){
                alert("请填写完整！");
                return;
            }
            if(start<end){
                alert("结束日期必须大于起始日期！")
                return;
            }
            $("form:first").submit();
        }

        function showMsgButton()
        {
            var dept = $("#deparment option:selected").val();
            $.ajax({
                url:"/doctor/getDoctorByDeptId.action?dept_id="+dept,
                dataType:"json",
                success:function (resultData) {
                    $(resultData).each(function (index, item) {
                        var info = "<option value="+item.doctor_id+">"+item.name+"</option>"
                        $("#xianyou").append(info);
                    })
                }
            });
            document.getElementById("tablemsg").style.display="block";
            $("#xianyou option").remove()
        }
        function resetButton()
        {
            document.forms[0].elements["scienceName"].value="";
            document.forms[0].elements["startDate"].value="";
            document.forms[0].elements["endDate"].value="";
            document.forms[0].elements["time"].value="";
            document.getElementById("tablemsg").style.display="none";
        }
    </script>
</head>
<body>
<form action="/workTime/updateWorkTime.action" method="get">
    <center>
        <table height="20" border="1" >

            <tr>
                <td colspan = "5" align="center" size="3"><b>坐诊时间</b><p></td>
            </tr>
            <tr>
                <td align="center">
                    科室名称				</td>

                <td align="center">
                    开始时间				</td>
                <td align="center">
                    截止时间				</td>
            </tr>
            <tr>
                <td align="center">
                    <select property="" name="dept_id" id="deparment"  onChange="showMsgButton()" >
                        <option value="">请选择科室</option>
                    </select>
                </td>

                <td><input type="date" name="start_date" id="txtStartDate" maxlength="10" size="30">

                </td>
                <td>
                    <input type="date" name="end_date" id="txtEndDate" maxlength="10" size="30">
                </td>

            </tr>
        </table>
        <div style="display:none" id="tablemsg">
            <table height="20" border="0" ><tr>
                <td>现有医生:<br/>
                    <select id="xianyou" name="ids" multiple size="7" style="width:150px;height:150px">
                    </select><p>
                </td>
                <td>工作日:<br/>
                    <select id="week" name="weeks" multiple size="7" style="width:150px;height:150px">
                        <option value="monday">星期一</option>
                        <option value="tuesday">星期二</option>
                        <option value="wednesday">星期三</option>
                        <option value="thursday">星期四</option>
                        <option value="friday">星期五</option>
                        <option value="saturday">星期六</option>
                        <option value="sunday">星期日</option>
                    </select><p>
                </td>
            </tr>
                <tr align="center">
                    <td  colspan="5" >
                        <img src="../images/btn_save.GIF" alt="保存" onClick="saveButton()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <img src="../images/btn_cancel.GIF" alt="取消" onClick="resetButton()">
                    </td>
                </tr>
            </table>
        </div>
    </center>
    </table>

    </div>
    <p align="center">	</p>
</form>
</body>
</html>

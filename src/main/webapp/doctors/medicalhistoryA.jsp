<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2018/7/10
  Time: 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/popcalendar.js"></script>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <title>创建病历</title>
    <script>
        $(function () {
            $.ajax({
                url:"/patient/getAllNoMedical.action",
                dataType:"json",
                success:function (result) {
                    $(result).each(function (index,item) {
                        var info="<option value="+item.patient_id+">"+item.patient_name+"</option>"
                        $("#patients").append(info);
                    })
                }
            })

            $("#patients").change(function () {
                var id = $(this).val();
                $.ajax({
                    url:"/patient/getPatientById.action",
                    data:{"patient_id":id},
                    dataType:"json",
                    success:function (patient) {
                        var sex = patient.sex;
                        var name = patient.patient_name;
                        var age = patient.age;
                        var num = patient.identification_no;
                        var address = patient.address_povince+"省"+patient.address_city+"市";
                        if(sex=='男'){
                            $("#man").attr("checked","checked");
                        }else {
                            $("#woman").attr("checked","checked")
                        }
                        $("#txtNo").val(num);
                        $("#age").val(age);
                        $("#address").val(address)
                    }
                })
            })
        })
        function saveButton()
        {
            $("form").submit();
            alert("保存成功！");
        }

    </script>
</head>
<body>
<center>
    <form action="/medical/saveMedical.action" method="post">
        <table border="0">
            <td colspan="2"><center><b>病历</b></center></td>
            <tr>
                <td>真实姓名：</td>
                <td>
                    <input type="hidden" name="doctor_id" value="${user.doctor.doctor_id}">
                    <select name="patient_id" id="patients"  >
                        <option value="" name="">=患者=</option>
                    </select><font color="red">&nbsp;&nbsp;*		  </font></td>
            </tr>
            <tr>
                <td>性&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
                <td>
                    <input id="man" type="radio" value="男" name="sex"  disabled/>男&nbsp;&nbsp;
                    <input id="woman" type="radio" value="女" name="sex"  disabled/>女
                    <font color="red">&nbsp;&nbsp;*</font>			 </td>
            </tr>
            <tr>
                <td>身份证号：</td>
                <td><input type="text" id="txtNo" size="30" readonly="readonly" name="identification_no" /><font color="red">&nbsp;&nbsp;*</font></td>
            </tr>
            <tr>
                <td>年&nbsp;&nbsp;&nbsp;&nbsp;龄：</td>
                <td><input type="text" id="age" size="30" name="age" readonly/><font color="red">&nbsp;&nbsp;*</font></td>
            </tr>
            <tr>
                <td>地&nbsp;&nbsp;&nbsp;&nbsp;址：</td>
                <td>
                    <input type="text" size="30" id="address" name="address" readonly/>
                    <font color="red">&nbsp;&nbsp;*</font>			  </td>
            </tr>
            <tr>
                <td valign="top">病历描述：</td>
                <td><textarea id="txtarea" rows="9" cols="25" name="directionDetail"></textarea></td>
            </tr>
            <tr>
                <td colspan="2" align="center"></br>
                    <img src="../images/btn_save.GIF" alt="保存" onClick="saveButton()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../images/btn_cancel.GIF" alt="取消" onClick="resetButton()"></td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>

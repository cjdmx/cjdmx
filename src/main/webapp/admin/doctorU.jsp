<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2018/7/10
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>医生注册</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type = "text/javascript">
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
                url:"/admin/getAllPosition.action",
                dataType:"json",
                success:function (resultData) {
                    $(resultData).each(function (index,item) {
                        var info="<option value="+item.position_id+">"+item.position_name+"</option>";
                        $("#positiontitle").append(info);
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

        });
        function fillCity(sheng){
            var ShiObjects=document.getElementById("city");
            var GDObjects=new Array("广州","深圳","东莞","清远","潮州","汕头","湛江");
            var SDObjects=new Array("济南","青岛","威海","烟台","莱芜","滨州","枣庄","淄博","泰安","潍坊","菏泽","临沂","日照","聊城");
            if("山东"==sheng){
                ShiObjects.options.length=0;
                for(var i=0;i<SDObjects.length;i++){
                    ShiObjects.options.add(new Option(SDObjects[i],SDObjects[i]));
                }
            }else if("广东"==sheng){
                ShiObjects.options.length=0;
                for(var i=0;i<GDObjects.length;i++){
                    ShiObjects.options.add(new Option(GDObjects[i],GDObjects[i]));
                }
            }
        }
        function updateButton()
        {
            $("form:first").submit();
        }
        function cancelButton()
        {

            document.forms[0].elements["rname"].value="";
            document.forms[0].elements["pwd"].value="";
            document.forms[0].elements["age"].value="";
            document.forms[0].elements["scienceName"].value="";
            document.forms[0].elements["stSheng"].value="";
            document.forms[0].elements["stCity"].value="";
            document.forms[0].elements["mobile"].value="";
            document.forms[0].elements["phone"].value="";
            document.forms[0].elements["desc"].value="";
            document.forms[0].elements["sciencelongenvy"].value="";
            var sex=document.forms[0].elements["rdsex"];
            sex[0].checked=true;
            sex[1].checked=false;

        }
    </script>
</head>
<body>
<form action="/doctor/updateDoctor.action" method="post">
    <center>
        <table height="10" >
            <tr>
                <td colspan = "11" align="center" size="3"><b>更新医生账号</b></td>
            </tr>

            <tr>
                <td align="center">&nbsp;&nbsp;姓名:</td>
                <td>&nbsp;
                    <input type="hidden" value="${old.doctor_id}" name="doctor_id">
                    <input type="text" id= "txttruename" size="30" name="name" value="${old.name}"><font color="red">&nbsp;&nbsp;*</font>
                </td>
            </tr>
            <tr>
                <td align="center">&nbsp;&nbsp;密&nbsp;&nbsp;&nbsp;&nbsp码:</td>
                <td>&nbsp;
                    <input type ="password" id="txtmima" size="30" name="password" value="${old.password}"><font color="red">&nbsp;&nbsp;*</font>
                </td>
            </tr>
            <tr>
                <td align="center">&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;&nbsp;龄:</td>
                <td>&nbsp;
                    <input type ="text" id="txtyear" size="30" name="age" value="${old.age}"> <font color="red">&nbsp;&nbsp;*</font>
                </td>
            </tr>

            <tr>
                <td align="center">&nbsp;&nbsp;职&nbsp;&nbsp;&nbsp;&nbsp;称:</td>
                <td>&nbsp;
                    <select name="positiontitle_id" id="positiontitle">
                        <option value="">请选择职称</option>
                    </select>
                    <font color="red">&nbsp;&nbsp;*</font>
                </td>
            </tr>

            <tr>
                <td align="center">&nbsp;&nbsp;权&nbsp;&nbsp;&nbsp;&nbsp;限:</td>
                <td>&nbsp;
                    <select name="role" id="role_id">
                        <option value="">请选择权限</option>
                        <option value="2">医生</option>
                        <option value="3">管理员</option>
                    </select>
                    <%--<input type ="text" id="functionName" size="30" name="dfun">--%><font color="red">&nbsp;&nbsp;*</font>
                </td>
            </tr>
            <tr>
                <td align="center">&nbsp;&nbsp;性&nbsp;&nbsp;&nbsp;&nbsp;别:</td>
                <td>&nbsp;
                    <input type="radio" name="sex" value="男" checked>男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="sex" value="女">女&nbsp;
                </td>
            </tr>
            <tr>
                <td align="center">&nbsp;&nbsp;所在科室:</td>
                <td>&nbsp;
                    <select id="deparment" name="dept_id" >
                        <option value="">请选择科室</option>
                    </select><font color="red">&nbsp;&nbsp;*	</font></td>

            </tr>
            <tr>
                <td align="center">&nbsp;&nbsp;地&nbsp;&nbsp;&nbsp;&nbsp;址:</td>
                <td colspan="3">&nbsp;
                    <select name="address_province" id="sheng" onchange=fillCity(this.value)>
                        <option value="">==省==</option>
                        <option value="山东"> 山东 </option>
                        <option value="广东"> 广东 </option>
                    </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <select name="address_city" id="city">
                        <option value="">==市==</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td align="center">&nbsp;&nbsp;资&nbsp;&nbsp;&nbsp;&nbsp;历:</td>
                <td>&nbsp;<select id="resume" property="" name="resume_id" >
                    <option value="">请选择资历</option>


                </select></td>
            </tr>
            <tr>
                <td align="center">&nbsp;&nbsp;手&nbsp;&nbsp;&nbsp;&nbsp;机:</td>
                <td>&nbsp;
                    <input type="text" id="txtTel" size="30" name="mobile_phone" value="${old.mobile_phone}"><font color="red">&nbsp;&nbsp;*</font>
                </td>
            </tr>
            <tr>
                <td align="center">&nbsp;&nbsp;办公电话:</td>
                <td>&nbsp;
                    <input type="text" id="txtofferphonename" size="30" name="office_phone" value="${old.office_phone}" ><font color="red">&nbsp;&nbsp;*</font>
                </td>
            </tr>
            <tr>
                <td align="center">&nbsp;&nbsp;医生简介:</td>
                <td colspan="3">&nbsp;
                    <textarea rows="6" cols="45" id="txtAra" name="desc_context">${old.desc_context}</textarea>
                </td>
            </tr>
            <tr align="center">
                <td  colspan="4" >
                    <img src="../images/New_Icon.gif" alt="修改" onClick="updateButton()">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <img src="../images/btn_cancel.GIF" alt="取消" onClick="cancelButton()">
                </td>
            </tr>
        </table>
    </center>
</form>
</body>
</html>

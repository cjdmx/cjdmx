<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>医生查询</title>
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
                        $("#txtResume").append(info);
                    })
                }
            })
            $.ajax({
                url:"/admin/getAllPosition.action",
                dataType:"json",
                success:function (resultData) {
                    $(resultData).each(function (index,item) {
                        var info="<option value="+item.position_id+">"+item.position_name+"</option>";
                        $("#txtPost").append(info);
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
            var SDObjects=new Array("济南","青岛","威海","烟台","莱芜","滨州","枣庄","淄博","泰安","潍坊","菏泽","临沂","日照","聊城");
            if("山东"==sheng){
                ShiObjects.options.length=0;
                for(var i=0;i<SDObjects.length;i++){
                    ShiObjects.options.add(new Option(SDObjects[i],SDObjects[i]));
                }
            }
        }
        function updateButton(id)
        {
            document.location="/doctor/updateReturn.action?doctor_id="+id;
        }
        function deleteButton(id)
        {
            document.location="/doctor/deleteDoctor.action?doctor_id="+id;
        }
        function selectButton()
        {
            $("form:first").submit();
        }
        function  resetButton()
        {
            document.forms[0].elements["name"].value="";
            document.forms[0].elements["age"].value="";
            document.forms[0].elements["jName"].value="";
            var sex=document.forms[0].elements["rdsex"];
            sex[0].checked=true;
            sex[1].checked=false;
            document.forms[0].elements["scienceName"].value="";
            document.forms[0].elements["sciencelongenvy"].value="";

        }
    </script>
</head>
<body>
<form id="#form" action="/doctor/searchDoctor.action" method="post">
    <center>
        <table height="10" >
            <tr>
                <td colspan = "11" align="center" size="3"><b>医生查询</b></td>
            </tr>
            <tr>
                <td align="center">&nbsp;姓&nbsp;名:</td>
                <td>&nbsp;
                    <input type="text" id="txtName" size="30" value="" name="name"/><font color="red">&nbsp;&nbsp;*	</font></td>
            </tr>
            <tr>
                <td align="center">&nbsp;年&nbsp;龄&nbsp;段:</td>
                <td>&nbsp;
                    <select name="ageScope" id="ageScope">
                        <option value="">==年龄==</option>
                        <option value="1-10">1-10</option>
                        <option value="11-20">11-20</option>
                        <option value="21-30">21-30</option>
                        <option value="31-40">31-40</option>
                        <option value="41-50">41-50</option>
                        <option value="51-60">51-60</option>
                        <option value="61-70">61-70</option>
                        <option value="71-80">71-80</option>
                        <option value="81-90">81-90</option>
                        <option value="91-100">91-100</option>
                    </select>			</td>
            </tr>
            <tr>
                <td align="center">&nbsp;&nbsp;职&nbsp;&nbsp;&nbsp;&nbsp;称:</td>
                <td>&nbsp;
                    <select name="positiontitle_id" id="txtPost">
                        <option value="">请选择职称</option>
                    </select>&nbsp;&nbsp;*
                </td>
            </tr>
            <tr>
                <td align="center">&nbsp;&nbsp;性&nbsp;&nbsp;&nbsp;&nbsp;别:</td>
                <td>&nbsp;
                    <input type="radio" class="sex" name="sex" value="" checked>不限&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" class="sex" name="sex" value="男">男&nbsp;&nbsp;&nbsp;
                    <input type="radio" class="sex" name="sex" value="女">女&nbsp;		          </td>
            </tr>
            <tr>
                <td align="center">&nbsp;&nbsp;所在科室:</td>
                <td>&nbsp;
                    <select id="deparment" name="dept_id" >
                        <option value="">请选择科室</option>
                    </select><font color="red">&nbsp;&nbsp;*	</font>
                </td>
            </tr>
            <tr>
                <td align="center">&nbsp;&nbsp;资&nbsp;&nbsp;&nbsp;&nbsp;历:</td>
                <td>&nbsp;
                    <select id="txtResume" name="resume_id" >
                        <option value="">请选择资历</option>
                    </select>
                </td>
            </tr>

            <tr align="center">
                <td  colspan="4" >
                    <img src="../images/btn_search.gif" alt="查询" onClick="selectButton()"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../images/btn_cancel.GIF"  alt="取消" onClick="resetButton()"/>			</td>
            </tr>
        </table>
        <p><p><p><p><p>
        <div id="tablemsg">
            <table id="table" border="1" width="677">
                <tr id="tablehead">
                    <td width="50" align="center">真实姓名</td>
                    <td width="29" align="center">性别</td>
                    <td width="30" align="center">年龄</td>
                    <td width="26" align="center">资历</td>
                    <td width="27" align="center">职称</td>
                    <td width="49" align="center">所在科室</td>
                    <td width="66" align="center">手机</td>
                    <td width="93" align="center">固定电话</td>
                    <td width="179" align="center">医生简介</td>
                    <td width="64" colspan="2" align="center">操作</td>
                </tr>

                <c:forEach items="${requestScope.table}" var="item">
                    <tr>
                        <td align="center">${item.name}</td>
                        <td align="center">${item.sex}</td>
                        <td align="center">${item.age}</td>
                        <td align="center">${item.resume.resume_name}</td>
                        <td align="center">${item.positiontitle.position_name}</td>
                        <td align="center">${item.deparment.dept_name}</td>
                        <td align="center">${item.mobile_phone}</td>
                        <td align="center">${item.office_phone}</td>
                        <td onClick="window.open('/doctor/goMess.action?doctor_id=${item.doctor_id}','_blank')" style="color: blue" align="center">${item.desc_context}</td>
                        <td align="center">
                            <img src="../images/link_update.gif" alt="更新" onClick="updateButton(${item.doctor_id})">&nbsp;&nbsp;
                            <img src="../images/link_delete.gif" alt="删除" onClick="deleteButton(${item.doctor_id})">
                        </td>
                    </tr>
                </c:forEach>

            </table>
        </div>
    </center>
</form>
</body>

</html>

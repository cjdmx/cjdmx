<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询病例</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/popcalendar.js"></script>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type = "text/javascript">
            function updateP(id){
                self.location.href = "/medical/goUpdateMedical.action?patient_id="+id;
            }
            function deleteP(id) {

            }

            function queryMsg()
            {
                document.getElementById("tableMsg").style.display="block";
                $.ajax({
                    url:"/patient/search/medical.action",
                    data:$("form").serialize(),
                    success:function (result) {
                        $("#table tr:gt(0)").remove();
                        $(result).each(function (index, item) {
                            info="<tr >\n" +
                                "                    <td align=\"center\">"+item.patient_name+"</td>\n" +
                                "                    <td align=\"center\">"+item.sex+"</td>\n" +
                                "                    <td align=\"center\">"+item.age+"</td>\n" +
                                "                    <td onClick=\"window.open('/medical/goMess.action?id="+item.medicalhistory.id+"','_blank')\" align=\"center\" style=\"cursor:hand\">"+item.medicalhistory.dirctions+"</td>\n" +
                                "                    <td  colspan=\"2\" align=\"center\">\n" +
                                "                        <img src=\"../images/link_update.gif\" alt=\"更新\" onClick=\"updateP("+item.patient_id+")\">&nbsp;&nbsp;\n" +
                                "                        <img src=\"../images/link_delete.gif\" alt=\"删除\" onClick=\"deleteP("+item.patient_id+")\">\n" +
                                "                    </td>\n" +
                                "                </tr>";
                            $("#table").append(info);
                        })
                    }
                })
            }
    </script>
</head>
<body>
<form action="//search/searchMedical.action">
    <center>
        <table height="20" border="0" >
            <tr>
                <td colspan = "2" align="center" size="3"><b>病历查询</b></td>
            </tr>
            <tr>
                <td align="left">姓&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                <td>&nbsp;
                    <input name="patient_name" id="patient_name"/>
                    <font color="red">&nbsp;&nbsp;*</font></td>
            <tr>
                <td align="left">性&nbsp;&nbsp;&nbsp;&nbsp;别&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                <td>&nbsp;
                    <input type="radio" name="sex" value="">不限&nbsp;
                    <input type="radio" name="sex" value="男">男&nbsp;
                    <input type="radio" name="sex" value="女">女&nbsp;		 </td></tr>
            <tr>
                <td>身份证号&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                <td>
                    <input type="text" name="identification_no"  />		 </td>
            </tr>
            <tr>
                <td align="left">年龄区间&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                <td>&nbsp;
                    <select name="ageScope"  >
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
                <td align="center">创建病历时间:</td>
                <td>&nbsp;
                    <input type="date" id="medical_date" size="20"  name="medical_date">
                    <font color="red">&nbsp;&nbsp;*	</font>		</td>
            </tr>
            <tr align="center">
                <td  colspan="4" >
                    <img src="../images/btn_search.gif" alt="查询" onClick="queryMsg()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


                    <img src="../images/btn_cancel.GIF" alt="取消" onClick="resetButton()">			</td>
            </tr>
        </table>
        <p>
        <div style="display:none" id="tableMsg" >
            <table id="table" border="1"  width="600">
                <tr>
                    <td align="center">姓名</td>
                    <td align="center">性别</td>
                    <td align="center">年龄</td>
                    <td align="center">病例描述</td>
                    <td  colspan="2"align="center">操作</td>
                </tr>

            </table>
        </div>
    </center>
</form>
</body>

</html>

<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2018/7/10
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>留言回复</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script>

        $(function () {
            $.ajax({
                url:"/leavemsg/getReplyByPatientId.action?patient_id="+$("#patient").val(),
                dataType:"json",
                success:function (result) {
                    $(result).each(function (index,item) {
                        var check="";
                        var is;
                        if(item.isreading=='0'){
                            is="1";
                        }else {
                            is="0"
                            check="checked";
                        }
                        var info = "<tr>\n" +
                            "                <td><input type=\"text\" id=\"txtName1\" size=\"15\" name=\"uname\" value='"+item.doctor.name+"'/>\n" +
                            "                </td>\n" +
                            "                <td><input type=\"text\" id=\"txtName2\" size=\"25\" name=\"uname\" value='"+dateUtil(item.created_date)+"'/>\n" +
                            "                </td>\n" +
                            "                <td><textarea cols=\"30\" rows=\"6\" name=\"context2\">"+item.messagecontent+"</textarea>\n" +
                            "                </td>\n" +
                            "                <td  valign=\"middle\"><input  type=\"checkbox\" "+check+" name=\"isRead\" onClick=\"isread("+item.drm_id+","+is+")\"/>已读\n" +
                            "                </td>\n" +
                            "                <td> <img src=\"../images/link_delete.gif\" alt=\"删除\" onClick=\"del("+item.drm_id+")\"></td>\n" +
                            "            </tr>"
                        $("#table").append(info);
                    })
                }
            });
        });

        function dateUtil(arg) {
            if (arg == "" | arg == null) {
                return "";
            }
            var date = new Date(arg);
            var str = date.getFullYear()+"-"+date.getMonth()+"-"+date.getDate();
            return str;
        }

        function isread(drm_id,isreading) {
            document.location.href="/leavemsg/updateRead.action?drm_id="+drm_id+"&isreading="+isreading;
        }

        function del(id) {
            document.location.href="/leavemsg/deleteReply.action?id="+id;
        }

        function deleteButton()
        {
            alert("删除成功！");
            document.forms[0].submit();
        }
    </script>
</head>
<body>
<center>
    <form action="" method="post">
        <input type="hidden" id="patient" name="patient_id" value="${user.patient.patient_id}">
        <table border="1" id="table">
            <tr><td colspan="6"><center><b>留言回复</b></center></td></tr>

            <tr>
                <td>医生姓名</td>
                <td>回复时间</td>
                <td>回复内容</td>
                <td>阅读标志</td>
                <td>操作</td>
            </tr>


        </table>
    </form>
</center>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link type="text/css" href="css/stylesheet.css" rel="stylesheet"/>
    <base target="Main">
</head>

<script language="javascript">
    var MenuFrameSize
    function FrameControl()
    {
        if (top.ot.cols == "20,*")
        {

            parent.Left.document.body.scroll = "auto"
            top.ot.cols = MenuFrameSize

        }
        else
        {

            parent.Left.document.body.scroll = "no"
            MenuFrameSize = top.ot.cols
            top.ot.cols = "20,*"

        }
    }

    function fmenu1(ctlName)
    {
        if (document.all[ctlName] != null)
        {
            if (document.all[ctlName].style.display == 'none')
            {
                document.all[ctlName].style.display = 'block';
            }
            else
            {
                document.all[ctlName].style.display = 'none';
            }
        }
    }
</script>

<body bgcolor="#cccccc" leftmargin="0" topmargin="0">

<table width="100%" cellpadding="3" border="0">
    <tr>
        <td>
            <img alt="" src="images/Frame_Control.gif" onClick="FrameControl()" style="CURSOR:hand" width="20" height="20">
        </td>
    </tr>
    <tr>
        <td>
            <table id="tableTree" border="0" style="width:100%;">
                <tr>
                    <td>
                        <div onMouseDown="fmenu1('Table0')" style="cursor:hand;">
                            <img src="images/nodec.gif" width="16" height="15">&nbsp; 医院门诊查询预约系统</div>
                    </td>
                </tr>
                <tr id="Table0" style="display:none;">
                    <td>
                        <table border="0" width="182">

                            <tr>
                                <td width="100%">
                                    <div onMouseDown="fmenu1('Table10')" style="cursor:hand;">
                                        &nbsp; <img src="images/nodeo.gif" width="16" height="16">患者管理功能								</div>							</td>
                            </tr>
                            <tr id="Table10" style="display:none;">
                                <td>
                                    <table border="0" width="166">
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="patient/doctorMessage.jsp">查询医生信息</a>										</td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="patient/bespeakDoctor.jsp">进行预约</a>										</td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="patient/cancleBaspeak.jsp">取消预约</a>										</td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="patient/medicalHistoryD.jsp">下载病历模板</a>										</td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="patient/leaveMessage.jsp">给医生留言</a>										</td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="patient/writeBackMessage.jsp">查看回复留言</a>										</td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="updatepassword.jsp">修改密码</a>										</td></table></tr>
                        </table>							</td>
                </tr>

                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td height="19">
            <div style="cursor:hand;">
                <img src="images/logout.gif" border="0" width="16" height="15">&nbsp;
                <a href="login.jsp">退出</a></div>
        </td>
    </tr>
</table>
</td>
</tr>
</table>

</body>

</html>


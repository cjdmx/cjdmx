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
                                    <div onMouseDown="fmenu1('Table11')" style="cursor:hand;">
                                        &nbsp;
                                        <img src="images/nodeo.gif" width="16" height="16">管理员								</div>							</td>
                            </tr>
                            <tr id="Table11" style="display:none;">
                                <td>
                                    <table border="0" width="166">
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="admin/doctorA.jsp">创建医生帐号</a>	</td>									</td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="admin/doctorE.jsp">查询医生信息</a>										</td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="admin/reservedment.jsp">医生预约人数</a>										</td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="admin/sittime.jsp">医生坐诊时间</a>										</td>
                                        </tr>
                                        <tr>

                                            <td>
                                                <div onMouseDown="fmenu1('Table12')" style="cursor:hand;">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;基本信息维护
                                                </div>
                                            </td>


                                        <tr id="Table12" style="display:none;">
                                            <td>
                                                <table><tr><td width="100%">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <a href="admin/supportA.jsp">查询职称表</a>	</td></tr><tr>
                                                    <td width="100%">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <a href="admin/supportA1.jsp">查询资历表</a>	</td></tr></table>
                                            </td></tr></tr>
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="updatepassword.jsp">修改密码</a>	</td>

                                        </tr>
                                    </table>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="19">
                        <div style="cursor:hand;">
                            <img src="images/logout.gif" border="0" width="16" height="15">&nbsp;
                            <a href="login.jsp" target="_blank">退出</a></div>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

</body>

</html>


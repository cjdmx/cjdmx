<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>用户注册表</title>
    <link type="text/css" href="D:/cvsClient/hospiproject/4-UI/css/stylesheet.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/popcalendar.js"></script>
    <script type="text/javascript">
        function getcity(province){

            var shandong_city = new Array("济南","青岛","威海","烟台","莱芜","滨州","枣庄","淄博","泰安","潍坊","菏泽","临沂","日照","聊城");
            var guangdong_city = new Array("广州","深圳","东莞","清远","潮州","汕头","湛江");

            var city = document.getElementById("city");

            if("山东"==province){
                city.options.length=0;
                for(var i=0;i<shandong_city.length;i++){
                    city.options.add(new Option(shandong_city[i],shandong_city[i]));
                }
            }else if("广东"==province){
                city.options.length=0;
                for(var i=0;i<guangdong_city.length;i++){
                    city.options.add(new Option(guangdong_city[i],guangdong_city[i]));
                }
            }
        }
        function resetButton()
        {
            document.forms[0].elements["uname"].value="";
            document.forms[0].elements["upass"].value="";
            document.forms[0].elements["reupass"].value="";
            document.forms[0].elements["idcard"].value="";
            document.forms[0].elements["uage"].value="";
            document.forms[0].elements["sex"].value="";
            document.forms[0].elements["uprovince"].value="";
            document.forms[0].elements["ucity"].value="";
            document.forms[0].elements["telephone"].value="";
        }
        function registerButton()
        {
            alert("注册成功，请登录！");
            document.forms[0].submit();
        }
    </script>

</head>
<body>
<form action="/user/patientRegister.action" method="post">
    <center>

        <table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td>&nbsp;</td>
                <td width="411">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <img src="../images/TOPBAR.GIF" width="1000" height="69"></td>
            </tr>
            <tr>
                <td colspan="2">
                </td>
            </tr>
        </table>
        <table cellspacing="3" width="400" height="400">
            <tr>
                <td colspan="2" align="center">
                    患者注册				</td>
            </tr>
            <tr>
                <td align="right">用&nbsp;户&nbsp;名:</td>
                <td><input type="text"  maxlength="20" size="30" name="patient_name"><font color="red">*					</td>
            </tr>
            <tr>
                <td align="right">密&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
                <td><input type="password"  maxlength="10" size="30" name="password"><font color="red">*					</td>
            </tr>

            <tr>
                <td align="right">身份证号:</td>
                <td>
                    <input type="text"  size="18" name="identification_no"><font color="red">*					</td>
            </tr>
            <tr>
                <td align="right">年&nbsp;&nbsp;&nbsp;&nbsp;龄:</td>
                <td>
                    <input type="text" maxlength="10" size="30"  name="age">					</td>
            </tr>
            <tr>
                <td align="right">性&nbsp;&nbsp;&nbsp;&nbsp;别:</td>
                <td><input type="radio" name="sex" value="男" checked>男&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;
                    <input type="radio" name="sex" value="女">女					</td>
            </tr>
            <tr>
                <td align="right">地&nbsp;&nbsp;&nbsp;&nbsp;址:</td>
                <td>
                    所在省:
                    <select property="province" name="address_povince" id="province" onChange="getcity(this.value)">
                        <option value="">请选择...</option>
                        <option value="山东">山东</option>
                        <option value="广东">广东</option>
                    </select>
                    所在市:
                    <select property="city" id="city" name="address_city"></select>					</td>
            </tr>
            <tr>
                <td align="right">电&nbsp;&nbsp;&nbsp;&nbsp;话:</td>
                <td>
                    <input type="text" name="phone" id="txtTelephone" maxlength="10" size="30"><font color="red">*</font>					</td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <img src="../images/btn_register.GIF" onClick="registerButton()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../images/btn_cancel.GIF" onClick="resetButton()" >					</td>
            </tr>
        </table>
    </center>
</form>
</body>
</html>


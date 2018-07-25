<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2018/7/10
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>模板维护基本表</title>
    <link type="text/css" href="../css/stylesheet.css" rel="stylesheet"/>
    <script type = "text/javascript">
        function suanze(){
            var aa=document.getElementById("xuanze").value;
            if(aa=="zili"){
                document.getElementById("zhicheng").style.display="none";
                document.getElementById("zhichengxiugai").style.display="none";
                document.getElementById("zilixiugai").style.display="none";
                document.getElementById("zili").style.display="block";
            }
            if(aa=="zhicheng"){
                document.getElementById("zhicheng").style.display="block";
                document.getElementById("zhichengxiugai").style.display="none";
                document.getElementById("zilixiugai").style.display="none";
                document.getElementById("zili").style.display="none";
            }
        }
        function xiugaizhicheng(){
            document.getElementById("zhicheng").style.display="none";
            document.getElementById("zhichengxiugai").style.display="block";
        }
        function xiugaizili(){
            document.getElementById("zili").style.display="none";
            document.getElementById("zilixiugai").style.display="block";
        }
    </script>
</head>
<body>
<div align="center" id="xuan">
    <table>
        <tr>
            <td>选择维护的表</td>
            <td>
                <select onChange="suanze()" name="xuanze">
                    <option value="zhicheng">职称表</option>
                    <option value="zili">资历表</option>
                </select>
            </td>
        </tr>
    </table>
</div>
<p><p><p><p>
<div id="zhicheng" align="center" style="display:block">
    <table align="center" border="1" border="1">
        <tr><td align="center" colspan="4"><b>信息维护</b></td></tr>
        <tr>
            <td align="center">职称名</td>
            <td align="center">职称标准</td>
            <td align="center">创建时间</td>
            <td align="center">操作</td>
        </tr>
        <tr>
            <td align="center"></td>
            <td align="center"></td>
            <td align="center"></td>
            <td align="center">
                <img src="../images/link_update.gif" alt="修改" onClick="xiugaizhicheng()">&nbsp;&nbsp;
                <img src="../images/link_delete.gif" alt="删除" onClick="alert('删除')">&nbsp;&nbsp;
            </td>
        </tr>
    </table>
</div>
<div id="zili" align="center" style="display:none">
    <table align="center" border="1" >
        <tr>
            <td align="center">资历名</td>
            <td align="center">资历标准</td>
            <td align="center">创建时间</td>
            <td align="center">操作</td>
        </tr>
        <tr>
            <td align="center"></td>
            <td align="center"></td>
            <td align="center"></td>
            <td align="center">
                <img src="../images/link_update.gif" alt="修改" onClick="xiugaizili()">&nbsp;&nbsp;
                <img src="../images/link_delete.gif" alt="删除" onClick="alert('删除')">&nbsp;&nbsp;
            </td>
        </tr>
    </table>
</div>
<div id="zhichengxiugai" align="center" style="display:none">
    <table align="center" border="1" >
        <tr>
            <td align="center">职称名</td>
            <td><input type="text"/></td>
        </tr>
        <tr>
            <td align="center">职称标准</td>
            <td><input type="text"/></td>
        </tr>
        <tr>
            <td align="center">创建时间</td>
            <td><input type="text" readonly/></td>
        </tr>
        <tr>
            <td align="center">修改时间</td>
            <td><input type="text"/></td>
        </tr>
        <tr>
            <td align="center">变更者</td>
            <td><input type="text"/></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <img src="../images/link_update.gif" alt="提交" onClick="alert('提交')">&nbsp;&nbsp;
                <img src="../images/link_delete.gif" alt="删除" onClick="alert('删除')">&nbsp;&nbsp;
            </td>
        </tr>
    </table>
</div>
<div id="zilixiugai" align="center" style="display:none">
    <table align="center" border="1" >
        <tr>
            <td align="center">资历名</td>
            <td><input type="text"/></td>
        </tr>
        <tr>
            <td align="center">资历标准</td>
            <td><input type="text"/></td>
        </tr>
        <tr>
            <td align="center">创建时间</td>
            <td><input type="text" readonly/></td>
        </tr>
        <tr>
            <td align="center">修改时间</td>
            <td><input type="text"/></td>
        </tr>
        <tr>
            <td align="center">变更者</td>
            <td><input type="text"/></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <img src="../images/link_update.gif" alt="提交" onClick="alert('提交')">&nbsp;&nbsp;
                <img src="../images/link_delete.gif" alt="删除" onClick="alert('删除')">&nbsp;&nbsp;
            </td>
        </tr>
    </table>
</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2016/3/16
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register</title>
</head>
<body>
<form action ="do_register.jsp" method="post" >
    Mtype:
    <input type="checkbox" name="skill" value="one"/>复利计算
    <input type="checkbox" name="skill" value="two"/>单利计算
    <input type="checkbox" name="skill" value="three"/>年限计算
    <input type="checkbox" name="skill" value="four"/>利率计算
    <input type="checkbox" name="skill" value="five"/>本金计算
    <br/><br/><br/>
   （需要求得值为0）<br/>
    收益：<input type="text" name="Money"/><br/>
    本金：<input type ="text" name="Value" /><br/>
    年限：<input type="text" name="Year"/><br/>
    利率：<input type="text" name="Rate"/><br/>
    <input type="submit" value="提交"/>
</form>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2016/3/16
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    String Value= request.getParameter("Value");
    String Year =request.getParameter("Year");
    String Money =request.getParameter("Money");
    String Rate =request.getParameter("Rate");
   String skill= "";
   String[] SkillALL=request.getParameterValues("skill");
    if(SkillALL !=null&&SkillALL.length>0){
        for(String skills:SkillALL)
        {
            skill=skill+skills+" ";
        }


    }
    request.setAttribute("skill" ,skill);
    request.setAttribute("Value" ,Value);
    request.setAttribute("Year" ,Year);
    request.setAttribute("Money" ,Money);
    request.setAttribute("Rate" ,Rate);
%>
<jsp:forward page="Math.jsp"/>
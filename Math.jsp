<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2016/3/16
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Math</title>
</head>
<body>



<%
    Year=Double.parseDouble((String)request.getAttribute("Year"));
    Value=Double.parseDouble((String)request.getAttribute("Value"));
    Money=Double.parseDouble((String)request.getAttribute("Money"));
    Rate=Double.parseDouble((String)request.getAttribute("Rate"));
%>

<%
     String Check=(String)request.getAttribute("skill");
     if(Check.equals("one ") ){

        Money=Value*Math.pow((1+Rate ),Year );
         out.print("收益:");
         out.print(Money);
     }

    if(Check.equals("two ") ){

        Money=Value*(1+Rate*Year );
        out.print("收益:");
        out.print(Money);
    }

    if(Check.equals("three ") ){

        Year=(Math.log(Money/Value))/(Math.log(1+Rate));
        out.print("年限:");
        out.print(Year);
    }

    if(Check.equals("four ") ){

        Rate=Math.pow((Money/Value),1/Year)-1;
        out.print("利率:");
        out.print(Rate);
    }
    if(Check.equals("five ") ){

         Value=Money/Math.pow((1+Rate ),Year ) ;
        out.print("本金:");
        out.print(Value);
    }

%>

<%!
    private double  Value=0;
    private double  Year=0;
    private double  Money=0;  //收益
    private double  Rate=0;

%>



</body>
</html>

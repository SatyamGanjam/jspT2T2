<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<center>
 <h1>  This is for jsp1 page for visitors11 </h1> 
 </center>
 <p> visitor list would be displayed </p>
 
 
 <%
    Integer hitsCount = 
      (Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
       /* First visit */
       out.println("Welcome to my website!");
       hitsCount = 1;
    }else{
       /* return visit */
       out.println("Welcome back to my website!");
       hitsCount += 1;
    }
    out.println("modified second time");
    
    application.setAttribute("hitCounter", hitsCount);
%>
<center>
<p>Total number of visits: <%= hitsCount%></p>
</center>

<INPUT TYPE="BUTTON" VALUE="Button 1" ONCLICK="button1()">


        <SCRIPT LANGUAGE="JavaScript">
            <!--
            function button1()
            {
                
              
            } 
                       
            // --> 
            </SCRIPT>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>  
<head>  
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
    <title>JSP Page</title>  
</head>  
<body>
<% 
 StringBuffer sb=new StringBuffer();  
   	 for(int i=1;i<=5;i++)  
    {  
       sb.append((char)(int)(Math.random()*79+23+7));  
   }  
    String cap=new String(sb);
   %>
   <script type ="text/javascript">  
function validation(){  
    var c = document.f1.cap1.value;  
    var c1= document.f1.cap2.value;  
    if(c==null||c=="")  
    {  
       alert ("Please Enter Captcha");  
       return false;  
    }
    if(c!=c1)  
    {  
       alert ("Please Enter valid Captcha");  
       return false;  
    }
    if(c==c1)
    	{
    	alert("valid captcha");
    	return true;
    	}
    
}  
</script> 
<form action="log.jsp" name="f1" method="post" onsubmit="return validation()">  
<table border="0">  
    <tbody>  
       <tr> 
       <td>username:<input type="text" name="username" value=""/> </td>
       </tr>
       <tr>
        <td>passwaord:<input type="password" name="password" value=""/> </td>
        </tr>
        <tr>
        <td>  
          <div style="background-color: aqua"><h2><s><i><font face="casteller"><%=cap%></font></i></s></h2></div>  
        </td>  
        <td><input type="text" name="cap1" id="cap12" value="" /></td>  
        <td><input type="hidden" name="cap2" id="cap22" value='<%=cap%>' readonly="readonly" /></td>  
      </tr>  
   </tbody>  
</table>
<input type="reset" value="Reset" />  
</br>  
<input type="submit" value="LOGIN" />  


</form>  

</body>  
</html>  
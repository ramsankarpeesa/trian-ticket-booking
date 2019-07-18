<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
pre{
font-family:timesnewroman;
font-size: 15px;
 }
 
 

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
function validation()
	{
		var username=document.registerform.username.value;
		if(username.length<8)
		{  
			  alert("username must be at least 8 characters long.");  
			  return false;  
		}  
		var password=document.registerform.password.value;
		var confirmpassword=document.registerform.password1.value;
		if(password!=confirmpassword)
		{  
			alert("password must be same!");  
			return false;  
		}  
		else if(password.length<8)
		{  
			alert("password length should be atleast 8 letters"); 
			return false; 
		} 
		var phone = document.registerform.phone_number.value;
		if (isNaN(phone)){  
			  document.getElementById("num"); 
			  alert("enter numeric values");
			  return false;  
			}
		else if(phone.length!=10)
			{
			alert("enter 10 digit mobile number");
			}
		
		var x=document.registerform.email.value;  
		var atposition=x.indexOf("@");  
		var dotposition=x.lastIndexOf(".");  
		if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
		  alert("Please enter a valid e-mail address ");  
		  return false;  
		  } 
		
		
		
	
        
		
	}

</script>
<body >
<form name="registerform" method="POST" onsubmit="return validation()">

<h3><b><i>Please use a valid E-Mail ID and mobile number in registration.</i></b></h3><hr><br>
<table>
<tr>
<td> UserName<i style ="color:red">* </i>:</td>
<td><input type="text" name="username" placeholder = "atleast 8 letters" required> </td>
</tr>
</table>
<br>

<table>
<tr>
<td>  Password<i style ="color:red">* </i>:</td><td><input type="password" name="password" required placeholder = "atleast 8 letters"></td>
<td>Confirm Password<i style ="color:red">* </i>: </td><td><input type="password" name="password1" required placeholder = "atleast 8 letters"></td>
</tr>
</table><br>
<table>
<tr> <td> Security Question<i style ="color:red">* </i>:</td>
<td> <select name="security_question">
<option value="0"> Select Security Question</option>
<option value="1">What is your pet name?</option>
<option value="2">What is your favorite sports?</option>
<option value="3">What is your nick name?</option>
<option value="4">What was the first name of your school?</option>

</select>

<td> Security Answer<i style ="color:red">* </i>: <td><input type="text" name="security_answer" required placeholder = "Write your answer" > </td>
</tr>
</table>
<br>
Preferred Language :
<select name="preferred_language">
<option value="">Select Language</option>
<option value="l1">English</option>
<option value="l2">Hindi</option>
<option value="l3">Telugu</option>

</select>
<hr>
<h3><b><i>Personal Details</i></b></h3>
<pre>Name<i style ="color:red">*</i>: <input type="text" name="name" required placeholder = "Name"  ></pre>
<pre>Gender<i style ="color:red">*</i>: <input type="radio" name="gender" value="male"> Male    <input type="radio" name="gender" value="female"> Female    <input type="radio" name="gender" value="transgender"> TransGender</pre>
<pre>
DOB<i style ="color:red">*</i>: <input type="date" name="dob" required>     Occupation <i style ="color:red">*</i>: <input type="text" name="occupation" required ></pre>
<pre>
Marital Status(optional):   <input type="radio" name="marital_status" value="married"> Married  <input type="radio" name="marital_status" value="unmarried"> Unmarried
</pre>
<pre> Country<i style ="color:red">*</i>:&nbsp;<select name="country">
<option value="c">Select Country</option>
				<option value="Hong Kong">Hong Kong</option>
                <option value="Hungary">Hungary</option>
                <option value="Iceland">Iceland</option>
                <option value="India" selected>India </option>
                <option value="Indonesia">Indonesia</option>
                <option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option>
                <option value="Iraq">Iraq</option>
                <option value="Ireland">Ireland</option>
                <option value="Isle of Man">Isle of Man</option>
                <option value="Israel">Israel</option>
                <option value="Italy">Italy</option>
                <option value="Korea, Republic of">Korea, Republic of</option>
                <option value="Aruba">Aruba</option>
                <option value="Australia">Australia</option>
                <option value="America">America</option>
                <option value="Azerbaijan">Azerbaijan</option>
                <option value="Bahamas">Bahamas</option>
                <option value="Bahrain">Bahrain</option>
                <option value="Bangladesh">Bangladesh</option>
                <option value="Barbados">Barbados</option>
                <option value="Belarus">Belarus</option>
                <option value="Belgium">Belgium</option>
</select>       Email ID<i style ="color:red">*</i>: <input type="text" name="email"><br></pre>
<pre> ISD-Mobile<i style ="color:red">*</i>: <input type="text" name="code" required value= "+91" size="1" > <input type="text" name="phone_number" required> <span id="num"></span>  Nationality <i style ="color:red">*</i>: <input type="text" required name="nationality" value="indian"></pre>
Address<i style ="color:red">*</i>: <br>
<textarea rows="4" cols="50" name="address"  required placeholder="enter text here"></textarea><br></br>
<input type="submit" value="Register" name="submit"> <input type="reset">


</form>
</body>
</html>
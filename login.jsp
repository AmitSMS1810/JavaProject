<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="common/common_links.jsp"></jsp:include>
<script>
$(document).ready(function(){
	$("#btn").click(function(){
		var UserType,Email,Pass;
		UserType=$("#Utype").val().trim();
		Email=$("#email").val().trim();
		Pass=$("#pass").val().trim();
		if(UserType.length==0)
			{
			 $("#Utype").after("<span class='err'>Please select your user type</span>");
	            status=false;
			}
		if(Email.length==0)
			{
			$("#email").after("<span class='err'>please enter your email id.</span>");
			status=false;
			}
		return status;
			
	});
});
</script>
</head>
<body>
<div class="container-fluid">
<%--Including header --%>
<jsp:include page="common/header.jsp"></jsp:include>
<style type="text/css">
.input::Placeholder{
color: black;
opacity:1; /* Firefox */
}
</style>
<%--main part of webpage for content writing--%>

<div class="row main" style="min-height:600px;width:100%;background-image:ulr()background-image:no-repeat; padding-top:15px;padding-bootom:15px;margin:0px;padding:0px;">
<div class="col-sm-12">
<div class="row" style="height:600px;background-color:#A3C8D2;padding-bottom:20px; ">
<div class="col-sm-4"></div>
<div class="col-sm-4 p-3 mt-5" style="background-color:#bbb4b458;border-radius:10px;border:5px solid black">
<span class="h1 mt-2 text-light" style="margin-left:40%">Login</span>
<hr>
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10">
<form action="checklogin" method="post">
<select class="form-control mt-3" id="Utype" name="UserType" style="height: 45px;background-color:#bbb4b458; color:black;margin-bottom:20px;">
              
  <option value="">Choose User Type </option>
  <option value="DONOR" >Donor</option>
  <option value="RECEIVER">Receiver</option>
  <option value="ADMIN">Admin</option>
 </select>
 <input class=" input form-control mt-4" id="email" type="email" name="UserId" placeholder="Email" style="height:45px;background-color:#bbb4b458;color:white;
  placeholder=" enter your email";/>
  <input class=" input form-control mt-4" id="pass" type="password" name="Pass"placeholder="password" style=height:45px;background-color:#bbb4b458;color:white;
  placeholder=" enter your ";/>
  <input type="submit" class=" form-control mt-4 btn btn-success" id="btn" value="Login"/>
 </form>
<p class="text-center text-danger bg-white">${msg}</p>
</div>
<div class="col-sm-1"></div>
</div>
</div>
<div class="col-sm-4"></div>
</div>
</div>
</div>
<%--In --%>
<jsp:include page="common/footer.jsp"></jsp:include>
</div>
</body>
</html>
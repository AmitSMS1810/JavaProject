 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
     pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Cops Doner Registration</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<jsp:include page="common/common_links.jsp"></jsp:include>
<style>
  .form-control
  {
    margin-top:5px;
    margin-bottom:10px;
  }
</style>

<script>
$(document).ready(function(){
	//To refresh captcha
	$("#IRefresh").click(function(){
		$.get("CaptchaImg",null,function(){
			$("#ICaptcha").attr("src","CaptchaImg");
		})
	})
	
	//to triger the click of file upload tag
	$("#ImgAttach").click(function(){
	
		$("#upic").trigger("click");
	});
	//To get the name of select picture 
	$("#upic").change(function(){
		var imgname=$(this).val();
		if(imgname.length>0)
			{
			imgname=imgname.substring(imgname.lastIndexOf("\\")+1);
			$("#ImgAttach").after("Selected File:"+imgname);
			}
	});
})
</script>
</head>
<body>
   <div class="container-fluid">
      <!-- <%--Including header --%> -->
      <jsp:include page="common/header.jsp"></jsp:include>
      <!-- /*main part of web page for content writing-- -->
      <div class="row main" style="min-height:600px;background-color:#D4E6F1;
            padding-top:15px;padding-bottom:15px;">
           <div class="col-sm-3">
           </div>
           <div class="col-sm-6 frm" style="padding-top:20px;padding-bottom:20px;
                min-height:320px;background-color:#73A097;">
                
                <form action="savereg" method="post" enctype="multipart/form-data">
                   <h2 class="text-center">Donor /Reciever Registration</h2>
                   <hr/>
                   <p id="pmsg">${msg }</p>
                   <div class="row">
                    <div class="col-sm-6">
                      <input type="radio" name="Usertype" value="DONOR" checked="checked"/>As a Donar Registration
                    </div>
                    <div class="col-sm-6">
                      <input type="radio" name="Usertype" value="RECEIVER"/>As a Reciever Registration  
                    </div>
                  </div>
                   <div class="row">
                   <div class="col-sm-6">
                     <input type="text" id="tname" name="Name" placeholder="Name" 
                        class="form-control" />
                   </div>
                   <div class="col-sm-6">
                      <span class="form-control">
                      Gender: 
                        <input type="radio" id="rdbmale" value="Male" 
                           name="Gender" checked="checked" /> Male
                        <input type="radio" id="rdbfemale" value="Female" 
                           name="Gender" /> Female
                      </span>
                   </div>
                 </div>
                 <div class="row">
                   <div class="col-sm-6">
                     <select name="City" id="ddlcity" class="form-control" style="color:#2F4B46 ;">
                       <option value="">Select City</option>
                       <option value="Agra">Agra</option>
                       <option value="Chitrakoot">Chitrakoot</option>
                       <option value="Banda">Delhi</option>
                       <option value="Varanasi">Varanasi</option>
                       <option value="Prayagraj">Prayagraj</option>
                     </select>
                   </div>
                   <div class="col-sm-6">
                     <input type="text" id="tadhar" name="AadharNo" placeholder="Enter Aadhar number" class="form-control"> 
                   </div>
                 </div>
                 <div class="row">
                   <div class="col-sm-6">
                     <input type="email" id="temail" name="Email" placeholder="EmailId" 
                        class="form-control" />
                   </div>
                   <div class="col-sm-6">
                      <input type="number" id="tmob" name="MobileNo" placeholder="Mobile No" 
                        class="form-control" />
                   </div>
                 </div>
                 <div class="row">
                   <div class="col-sm-6">
                     <input type="number" id="tpin" name="Pincode" placeholder="PinCode" 
                        class="form-control" />
                   </div>
                   <div class="col-sm-6">
                     <span class="form-control">Picture: 
                        <input type="file" id="upic" name="PicFile" style="display:none;" />
                        <img src="resources/images/attchment.png"id="ImgAttach" width="30px" height="30px" style="cursor:pointer;" title="Choose Picture">
                     </span> 
                   </div>
                 </div>
                 <div class="row">
                  <div class="col-sm-6">
                    <span class="form-control">Enter Organization Name: </span>
                  </div>
                  <div class="col-sm-6">
                    <input type="text" id="torg" name="OrgName" placeholder="Enter Organization" 
                       class="form-control" />
                  </div>
                </div>
                 <div class="row">
                   <div class="col-sm-12">
                     <textarea id="taddress" name="Address" placeholder="Enter your complete address" 
                        class="form-control"></textarea>
                   
                   </div>
                 </div>
                 <div class="row">
                   <div class="col-sm-6">
                     <input type="password" id="tpass" name="Pass" placeholder="Password" 
                        class="form-control" />
                   </div>
                   <div class="col-sm-6">
                     <input type="password" id="tcpass" name="ConfPass" placeholder="Confirm Password" 
                        class="form-control" />
                   </div>
                 </div>
                   <div class="row">
                   <div class="col-sm-6">
                     <span class="form-control">Captcha Code: 
                     <img id="ICaptcha" src="CaptchaImg"/>
                     <img id="IRefresh" width="35px"
                      height="35px" src='resources/images/refresh.png' title="Refresh Code" style="cursor:pointer;"/>
                     </span>
                   </div>
                   <div class="col-sm-6">
                     <input type="text" id="tcaptcha" name="Captcha" placeholder="Enter captcha code" 
                        class="form-control" />
                   </div>
                 </div>
                 <div class="row text-center" style="margin-top:13px;">
                   <div class="col-sm-6">
                     <input type="submit" id="btnsave"  value="Register Now" 
                        class="btn btn-success btn-lg" />
                   </div>
                   <div class="col-sm-6">
                     <input type="reset" id="btnclear"  value="Clear All" 
                        class="btn btn-danger btn-lg" />
                   </div>
                 </div>
                
                </form>
           </div>
           <div class="col-sm-3">
           </div>
      </div>
      <!-- <%--Including footer --%> -->
      <jsp:include page="common/footer.jsp"></jsp:include> 
   </div>
</body>
</html>
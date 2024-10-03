<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Cops</title>
<jsp:include page="common/common_links.jsp"></jsp:include>
<script>
$(document).ready(function(){
	$("#btnquery").click(function(){
		var nm=$("#tname").val().trim();
		var email=$("#temail").val().trim();
		var mob=$("#tmob").val().trim();
		var msg=$("#tmsg").val().trim();
		var myobj={Name:nm,EmailId:email,MobileNo:mob,QueryMsg:msg};
		//Ajax call
		$.post("saveEnquiry",myobj,function(res){
			
			alert(res);
			$(".btn-close").trigger("click");
			$("#tname").val("");
			$("#temail").val("");
			$("#tmob").val("");
			$("#tmsg").val("");
		});
	});
});
</script>
<style>
#btn{
z-index:10;
position:fixed;
margin-top:200px;
}
</style>
</head>
<body>
<div class="container-fluid">
<%--include header --%>
<jsp:include page="common/header.jsp"></jsp:include>
<div class="row main" style="min-height:600px;background-color:#D4E6F1;padding-top:0px;padding-bottom:0px;">
<div class="col-sm-12" style="margin:0px;padding:0px;">
<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active"style="min-height:600px; background-image:url('resources/images/dd1.png');background-repeat: no-repeat;background-size: cover;">
      
    </div>
    <button id="btn" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Enquiry Form
</button>
    <div class="carousel-item">
      <img src="resources/images/loodc1.jpg" class="d-block w-100" alt="..." style="height:600px;width:100%;">
    </div>
    <div class="carousel-item">
      <img src="resources/images/Aa.png" class="d-block w-100" alt="..." style="height:600px;widht:100%">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>

</div>
<!-- Content -->
<div class="row content" style="height:300px;width;100%;background-color:#dee3cf;">
<h1 style="color: black;text-align: center;font-size: 45px;font-family: georgio;">Conclusion</h1>
<div class="clo-sm-6">
<p style="font-family: georgio;text-align: justify;"><b>In summary, the study sheds light on the prevalence of food waste in Indian households, the related attitudes and emotions, and the reasons behind it. It also offers practical solutions for reducing, minimizing, or eliminating food waste, which could serve as guidelines for individuals, households, and policymakers. However, further research is needed to validate the findings by examining how these may vary in various geographical regions of India or households of different social classes. Mixed methods or quantitative research could produce comparable results and provide more comprehensive insights.</b></p>
</div>
<div class="col-sm-6">

</div>
</div>
<!-- Content end -->
<jsp:include page="common/footer.jsp"></jsp:include>
</div>
<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header" style="background-color: red">
        <h5 class="modal-title" id="exampleModalLabel">Enquiry Form</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <div class="row">
       <div class="col-sm-6">
       
       <input class="input-form-control mt-3" type="text" placeholder="Name" name="Name" id="tname"style="height:45px;" >
       <input class="input-form-control mt-3" type="email" placeholder="Email" name="EmailId" id="temail" style="height:45px;">
       <input class="input-form-control mt-2" type="number" placeholder="Phone no." name="MobileNo" id="tmob" style="height:45; "><br>
       <textarea class="form-control" name="QueryMsg" id="tmsg" style="border:1px solid black;" placeholder="Type yuur query her..."></textarea>
       <input type="submit" class="btn form-control btn-success mt-2" id="btnquery">
       
       </div>
       <div class="col-sm-6">
       <img src="resources/images/Food-Waste.png" style="height:150px;">
       </div>
       </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>
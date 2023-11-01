<?php 
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['bpmsuid']==0)) {
  header('location:logout.php');
  } else{



  ?>
<!doctype html>
<html lang="en">
  <head>
 

    <title>Beauty Parlour Management System | Booking History</title>

    <!-- Template CSS -->
    <link rel="stylesheet" href="assets/css/style-starter.css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:400,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">
  </head>
  <body id="home">
<?php include_once('includes/header.php');?>

<script src="assets/js/jquery-3.3.1.min.js"></script> <!-- Common jquery plugin -->
<!--bootstrap working-->
<script src="assets/js/bootstrap.min.js"></script>
<!-- //bootstrap working-->
<!-- disable body scroll which navbar is in active -->
<script>
$(function () {
  $('.navbar-toggler').click(function () {
    $('body').toggleClass('noscroll');
  })
});
</script>

<!-- disable body scroll which navbar is in active -->

<!-- breadcrumbs -->
<section class="w3l-inner-banner-main">
    <div class="about-inner contact ">
        <div class="container">   
            <div class="main-titles-head text-center">
            <h3 class="header-name ">
                
 Booking History
            </h3>
            <p class="tiltle-para ">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Hic fuga sit illo modi aut aspernatur tempore laboriosam saepe dolores eveniet.</p>
        </div>
</div>
</div>
<div class="breadcrumbs-sub">
<div class="container">   
<ul class="breadcrumbs-custom-path">
    <li class="right-side propClone"><a href="index.php" class="">Home <span class="fa fa-angle-right" aria-hidden="true"></span></a> <p></li>
    <li class="active ">
        Booking History</li>
</ul>
</div>
</div>
    </div>
</section>
<!-- breadcrumbs //-->
<section class="w3l-contact-info-main" id="contact">
    <div class="contact-sec	">
        <div class="container">

            <div>
                <div class="cont-details">
                   <div class="table-content table-responsive cart-table-content m-t-30">
                   <h4 style="padding-bottom: 20px;text-align: center;color: blue;">Appointment Details</h4>
                        <?php
$cid=$_GET['aptnumber'];
$ret=mysqli_query($con,"select tbluser.FirstName,tbluser.LastName,tbluser.Email,tbluser.MobileNumber,tblbook.ID as bid,tblbook.AptNumber,tblbook.AptDate,tblbook.AptTime,tblbook.Message,tblbook.BookingDate,tblbook.Remark,tblbook.Status,tblbook.RemarkDate from tblbook join tbluser on tbluser.ID=tblbook.UserID where tblbook.AptNumber='$cid'");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
                        <table class="table table-bordered">
                            <tr>
    <th>Appointment Number</th>
    <td><?php  echo $row['AptNumber'];?></td>
  </tr>
  <tr>
<th>Name</th>
    <td><?php  echo $row['FirstName'];?> <?php  echo $row['LastName'];?></td>
  </tr>

<tr>
    <th>Email</th>
    <td><?php  echo $row['Email'];?></td>
  </tr>
   <tr>
    <th>Mobile Number</th>
    <td><?php  echo $row['MobileNumber'];?></td>
  </tr>
   <tr>
    <th>Appointment Date</th>
    <td><?php  echo $row['AptDate'];?></td>
  </tr>
 
<tr>
    <th>Appointment Time</th>
    <td><?php  echo $row['AptTime'];?></td>
  </tr>
  
  
  <tr>
    <th>Apply Date</th>
    <td><?php  echo $row['BookingDate'];?></td>
  </tr>
  

<tr>
    <th>Status</th>
    <td> <?php  
if($row['Status']=="")
{
  echo "Not Updated Yet";
}

if($row['Status']=="Selected")
{
  echo "Selected";
}

if($row['Status']=="Rejected")
{
  echo "Rejected";
}

     ;?></td>
  </tr>
                        </table><?php } ?>
                    </div> </div>
                
    </div>
   
    </div></div>
</section>
<?php include_once('includes/footer.php');?>
<!-- move top -->
<button onclick="topFunction()" id="movetop" title="Go to top">
	<span class="fa fa-long-arrow-up"></span>
</button>
<script>
	// When the user scrolls down 20px from the top of the document, show the button
	window.onscroll = function () {
		scrollFunction()
	};

	function scrollFunction() {
		if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
			document.getElementById("movetop").style.display = "block";
		} else {
			document.getElementById("movetop").style.display = "none";
		}
	}

	// When the user clicks on the button, scroll to the top of the document
	function topFunction() {
		document.body.scrollTop = 0;
		document.documentElement.scrollTop = 0;
	}
</script>
<!-- /move top -->
</body>

</html><?php } ?>
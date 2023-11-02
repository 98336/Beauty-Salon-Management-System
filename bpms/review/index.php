<?php 
session_start();
include('inc/header.php');
?>
<title>BPMS</title>
<script src="js/rating.js"></script>
<link rel="stylesheet" href="css/style.css">
<?php include('inc/container.php');?>
<div class="container">		
	
	<?php
	include 'inc/menu.php';
	include 'class/Rating.php';
	$rating = new Rating();
	$itemList = $rating->getItemList();
	foreach($itemList as $item){
		$average = $rating->getRatingAverage($item["id"]);
	?>	
	<div class="row">
		<div class="col-sm-2" style="width:150px">
			<img class="product_image" src="image/<?php echo $item["image"]; ?>" style="width:300px;height:300px;padding-top:10px;">
		</div>
		<div class="col-sm-4" style="margin-top:10px;margin-left:25%" >
		<h4 ><?php echo $item["name"]; ?></h4>
		<div><span class="average"><?php printf('%.1f', $average); ?> <small>/ 5</small></span> <span class="rating-reviews"><a href="show_rating.php?item_id=<?php echo $item["id"]; ?>">Rating & Reviews</a></span></div>
		<?php echo $item["description"]; ?>		
		</div>		
	</div>
	<?php } ?>	
</div>	
</div>	
<?php include('inc/footer.php');?>







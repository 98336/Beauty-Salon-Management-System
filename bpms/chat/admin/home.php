<!DOCTYPE html>
<html>
<head>
   <style>
    body {
  background-image: url(https://img.freepik.com/free-vector/vibrant-pink-watercolor-painting-background_53876-58931.jpg);
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
   </style>
</head>
<body>
<h1>Welcome, <?php echo $_settings->userdata('firstname')." ".$_settings->userdata('lastname') ?>!</h1>
<hr>
<div class="row">
        <div class="col-12 col-sm-6 col-md-6">
            <div class="info-box">
              <span class="info-box-icon bg-gradient-navy elevation-1"><i class="fas fa-comment-dots"></i></span>
              <div class="info-box-content">
                <span class="info-box-text">Total Responses</span>
                <span class="info-box-number">
                  <?php 
                    $responses = $conn->query("SELECT * FROM response_list where `status` = 1")->num_rows;
                    echo format_num($responses);
                  ?>
                  <?php ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-6">
            <div class="info-box">
              <span class="info-box-icon bg-gradient-light border elevation-1"><i class="fas fa-comments"></i></span>
              <div class="info-box-content">
                <span class="info-box-text">Total Fetched</span>
                <span class="info-box-number">
                  <?php 						
                    $total = $conn->query("SELECT * FROM keyword_fetched")->num_rows;
                    echo format_num($total);
                  ?>
                  <?php ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
        </div>
<div class="container">
  <center>
  </center>
</div>
</body>
</html>
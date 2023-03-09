<?php
session_start();
error_reporting(0);
include('includes/config.php');
include('includes/setting.php');

if(strlen($_SESSION['login'])==0)
  { 
header('location:index.php');
}
else{?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title><?php echo $_SESSION['name']; ?></title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />

</head>
<body>
<?php include('includes/header.php');?>
    <div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">Welcome <?php echo '  '.$_SESSION['email']; ?></h4>
                
                            </div>

        </div>
             
             <div class="row">


<a href="listed-books.php">
<div class="col-md-4 col-sm-4 col-xs-6">
 <div class="alert alert-success back-widget-set text-center">
 <i class="fa fa-list fa-5x"></i>
<?php 
$sql ="SELECT id from tblbooks ";
$query = $dbh->query($sql);
$results=$query->fetchAll(PDO::FETCH_OBJ);
$listdbooks=$query->rowCount();
?>
<h3><?php echo htmlentities($listdbooks);?></h3>
Totals Materials
</div></div></a>
             
               <div class="col-md-4 col-sm-4 col-xs-6">
                      <div class="alert alert-warning back-widget-set text-center">
                            <i class="fa fa-file fa-5x"></i>
                            <h3><?php ?></h3>
                          Documents
                        </div>
                    </div>

<a href="issued-books.php">
<div class="col-md-4 col-sm-4 col-xs-6">
 <div class="alert alert-danger back-widget-set text-center">
 <i class="fa fa-video-camera fa-5x"></i>
      <h3>&nbsp;</h3>
Videos
</div></div></a>
        </div>    
    </div>
    </div>
<?php include('includes/footer.php');?>
    <script src="assets/js/jquery-1.10.2.js"></script>
    <script src="assets/js/bootstrap.js"></script>
    <script src="assets/js/custom.js"></script>
</body>
</html>
<?php } ?>

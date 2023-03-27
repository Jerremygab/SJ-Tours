<?php

include 'components/connect.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Quick view</title>
   

   <link rel="stylesheet" href="css/style.css">
</head>
<body>
   
      <header  header id="header">
        <?php include 'components/header.php'; ?>
      </header>
<br>
<br>
<br>
<br>
<section class="quick-view">

<?php
     $pid = $_GET['pid'];
     $select_places = $conn->prepare("SELECT * FROM  `weekend_gateaway` WHERE id = ?"); 
     $select_places->execute([$pid]);
     if($select_places->rowCount() > 0){
      while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
   ?>

   <div class="form">
      <h1 class="title_">Visit San Juan</h1>
      <div class="row">
      <div class="img_container">
            <div class="main_image">
               <img src="img/tourist/<?= $fetch_places['img1']; ?>" id="main_img">
            </div>
            <div class="sub_image" id="sub_img">
               <img src="img/tourist/<?= $fetch_places['img1']; ?>" onclick="subImg1()" id="sub1">
               <img src="img/tourist/<?= $fetch_places['img2']; ?>" onclick="subImg2()" id="sub2">
               <img src="img/tourist/<?= $fetch_places['img3']; ?>" onclick="subImg3()" id="sub3">
               <img src="img/tourist/<?= $fetch_places['img4']; ?>" onclick="subImg4()" id="sub4">
               <img src="img/tourist/<?= $fetch_places['img5']; ?>" onclick="subImg5()" id="sub5">
            </div>
         </div>
         <div class="quick_content">
            <div class="name"><?= $fetch_places['place_name']; ?></div>
            <div class="details"><?= $fetch_places['location']; ?></div>
            <div class="details"><?= $fetch_places['description']; ?></div>
         </div>
      </div> 

      <br><br><br><br>
      <div id="contact"></div>
      <?php include 'contact.php'; ?>
    </div>
    </div>
   </div>
   
   <?php
      }
   }else{
      echo '<p class="empty">No places added yet!</p>';
   }
   ?>
</section>
<?php include 'components/footer.php'; ?>

<script src="js/script.js"></script>
<script src="http://thecodeplayer.com/uploads/js/prefixfree.js" type="text/javascript"></script>
</body>
</html>
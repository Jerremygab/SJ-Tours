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
<br>
<br>
<section class="quick_view section" id="quick-view" >

<?php
     $pid = $_GET['pid'];
     $select_places = $conn->prepare("SELECT * FROM  `souvenirs` WHERE id = ?"); 
     $select_places->execute([$pid]);
     if($select_places->rowCount() > 0){
      while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
   ?>

   <div class="form">
      <h1 class="title_">Featured Photos</h1>
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
                <a href="<?= $fetch_places['map_link']; ?>">
                    <div class="details"><?= $fetch_places['location']; ?></div>
                </a>
                <div class="details"><?= $fetch_places['details']; ?></div>
                

                <!-- <div class="amenities">
                    <h3>Dining</h3>
                    <ul class="li_grid">
                        <?= $fetch_places['diets']; ?>
                    </ul>
                    <hr>
                    <h3>Service Features </h3>
                    <ul class="li_grid">
                        <?= $fetch_places['features']; ?>
                    </ul>
                    <hr>
                    <h3>Offerings</h3>
                    <ul class="li_grid">
                        <?= $fetch_places['offering']; ?>
                    </ul>
                    <hr>
                </div> -->
            </div>

            <div class="exp_links">
                <a href="<?= $fetch_places['fb_link']; ?>" target="_blank"><i class='bx bxl-facebook-square icons_'></i></a>
                <a href="<?= $fetch_places['web_link']; ?>" target="_blank"><i class='bx bx-globe icons_'></i></a>
                <a href="<?= $fetch_places['ig_link']; ?>" target="_blank"><i class='bx bxl-instagram icons_'></i></a>
            </div>
        </div> 

      <br>
      <div id="contact">
        <?php include 'contact.php'; ?>
      </div>
      <div id="reviews">
        <div class="title_">Reviews</div>
        <?php include 'sv-reviews.php'; ?>
      </div>
      <div class="exp_container">
            <div class="title_">Similar Places</div>
            <br>
            <div class="what_to_do">
                <div class="exp_category">
                    <h4></h4>
                    <a href="wg-see-more.php">See more</a>
                </div>
                <div class="exp_grid">
                    <?php
                        $select_places = $conn->prepare("SELECT * FROM `souvenirs` ORDER BY RAND() LIMIT 5"); 
                        $select_places->execute();
                        if($select_places->rowCount() > 0){
                        while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
                    ?> 
                    <div class="souvenirs">
                        <div class="exp_img_box">
                        <a href="gs-quickview.php?pid=<?= $fetch_places['id']; ?>">
                            <img id="<?= $fetch_places['id']; ?>" tbl="souvenirs" thumbnail src="img/tourist/<?= $fetch_places['img1']; ?>" >
                        </a>
                        </div>
                        <div class="exp_place">
                            <b><?= $fetch_places['place_name']; ?></b>
                        </div>
                        <div class="exp_icons">
                            <div class="exp_links">
                                <a href="<?= $fetch_places['fb_link']; ?>" target="_blank"><i class='bx bxl-facebook-circle icons_'></i></a>
                                <a href="<?= $fetch_places['web_link']; ?>" target="_blank"><i class='bx bx-globe icons_'></i></a>
                                <a href="<?= $fetch_places['map_link']; ?>" target="_blank"><i class='bx bxs-map icons_'></i></a>
                            </div>
                            <div class="view_count">
                                <p id="display_souvenirs_<?= $fetch_places['id']; ?>"><?= $fetch_places['views']; ?></p>    
                                <i class="uil uil-eye icons_"></i>                          
                            </div>
                        </div>
                    </div>
                    <?php
                    }
                    }else{
                        echo '<p class="empty">No places found!</p>';
                    }
                    ?>
                </div>
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
<script src="js/viewCount.js"></script>
</body>
</html>
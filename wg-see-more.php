<?php

include 'components/connect.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Visit San Juan</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <?php include 'components/header.php'; ?>
    </header>
    <br><br>
    <br><br>
    <br><br>
    <section class="section see-more" >
        <div class="seemore_container container">
            <div class="title_">Weekend Gateaway</div>
            <div class="dropdown">
                <div class="options">
                    <form action="" method="post" class="seemore_sort">
                        <label for="seemore_sort">Sort By:</label>
                        <select name="seemore_sort" id="seemore_sort">
                            <option value="0">Default</option>
                            <option value="1" name="mostViewed">Most Viewed</option>
                            <option value="2" name="lowestPrice">Lowest Price</option>
                            <option value="3" name="highestPrice">Highest Price</option>
                        </select>
                        
                    </form>
                </div>
            </div>
            <div class="seemore_contents">

                <?php 

                        
                       /*  if($sortItem === 1){
                            $sql = "SELECT * FROM `weekend_gateaway` ORDER BY views ASC"; 
                        }
                        elseif($sortItem === 2){
                            $sql = "SELECT * FROM `weekend_gateaway` ORDER BY rate DESC"; 
                        
                        }
                        elseif($sortItem === 3){
                            $sql = "SELECT * FROM `weekend_gateaway` ORDER BY rate ASC";
                        }
                        else */
                            $sql = "SELECT * FROM `weekend_gateaway` ORDER BY id";
                    

                
                    $select_places = $conn->prepare($sql); 
                    $select_places->execute();
                    if($select_places->rowCount() > 0){
                    while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
                    
                ?>
                
                <div class="bg_container">
                    <div class="exp_place">
                        <?= $fetch_places['place_name']; ?>
                        <div class="exp_links">
                                <a href="<?= $fetch_places['fb_link']; ?>" target="_blank"><i class='bx bxl-facebook-circle icons_'></i></a>
                                <a href="<?= $fetch_places['web_link']; ?>" target="_blank"><i class='bx bx-globe icons_'></i></a>
                                <!-- <a href="<?= $fetch_places['gmail_link']; ?>" target="_blank"><i class='bx bxs-envelope icons_'></i></a> -->
                                <!-- <a href="<?= $fetch_places['phone_link']; ?>" target="_blank"><i class='bx bxs-phone icons_'></i></a> -->
                                <a href="<?= $fetch_places['map_link']; ?>" target="_blank"><i class='bx bxs-map icons_'></i></a>
                            </div>
                    </div>
                    <div class="more_grid">
                        <div class="left_side">
                            <div class="exp_img_box">
                                <img src="img/tourist/<?= $fetch_places['img1']; ?>" alt="">
                            </div>
                        </div>
                        <div class="right_side">

                            <p><?= substr($fetch_places['details'], 0, 260); ?>...</p><br>
                            <div class="details">Rate starts at: <br><b>PHP <?= $fetch_places['rate']; ?>.00</b></div>
                            <div class="details">
                                Total views:
                                <p id="display_weekend_gateaway_<?= $fetch_places['id']; ?>"><?= $fetch_places['views']; ?> <i class="uil uil-eye icons_"></i></p> 
                            </div>
                            <a href="quickview.php?pid=<?= $fetch_places['id']; ?>">
                                <button id="<?= $fetch_places['id']; ?>" tbl="weekend_gateaway" button class="visit_btn">Visit Now</button>
                            </a>
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
    </section>
    <?php include 'components/footer.php'; ?>

    <script src="js/script.js"></script>
    <script src="js/viewCount.js"></script>
</body>
</html>
      

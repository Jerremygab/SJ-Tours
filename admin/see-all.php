<?php

include '../components/connect.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>See All Contents</title>

    <link rel="stylesheet" href="../css/admin.css">
</head>
<body>
    
    <section id="see_all" class="see_all">
        <div class="see_all_container">
            <div class="see_all_content">
                <div class="title_">
                    See All Contents
                </div>                
                <div class="what_to_do">
                    <div class="exp_category">
                        <h4>Weekend Gateaway</h4>
                    </div>
                    <div class="exp_contents_">
                        <?php
                            $select_places = $conn->prepare("SELECT * FROM `weekend_gateaway` ORDER BY RAND()"); 
                            $select_places->execute();
                            if($select_places->rowCount() > 0){
                            while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
                        ?> 
                        <div class="weekend_gateaway">
                            <div class="exp_img_box">
                            <a href="quickview.php?pid=<?= $fetch_places['id']; ?>">
                                <img src="img/tourist/<?= $fetch_places['img1']; ?>" alt="">
                            </a>
                            </div>
                            <div class="exp_place">
                                <b><?= $fetch_places['place_name']; ?></b>
                            </div>
                            <div class="exp_links">
                                <a href="<?= $fetch_places['fb_link']; ?>" target="_blank"><i class='bx bxl-facebook-circle icons_'></i></a>
                                <a href="<?= $fetch_places['web_link']; ?>" target="_blank"><i class='bx bx-globe icons_'></i></a>
                                <!-- <a href="<?= $fetch_places['gmail_link']; ?>" target="_blank"><i class='bx bxs-envelope icons_'></i></a> -->
                                <!-- <a href="<?= $fetch_places['phone_link']; ?>" target="_blank"><i class='bx bxs-phone icons_'></i></a> -->
                                <a href="<?= $fetch_places['map_link']; ?>" target="_blank"><i class='bx bxs-map icons_'></i></a>
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
                <div class="what_to_do">
                    <div class="exp_category">
                        <h4>Gastronomic Experience</h4>
                    </div>
                    <div class="exp_contents_">
                        <?php
                            $select_places = $conn->prepare("SELECT * FROM `gastronomic_exp` ORDER BY RAND()"); 
                            $select_places->execute();
                            if($select_places->rowCount() > 0){
                            while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
                        ?> 
                        <div class="weekend_gateaway">
                            <div class="exp_img_box">
                            <a href="quickview.php?pid=<?= $fetch_places['id']; ?>">
                                <img src="img/tourist/<?= $fetch_places['img1']; ?>" alt="">
                            </a>
                            </div>
                            <div class="exp_place">
                                <b><?= $fetch_places['place_name']; ?></b>
                            </div>
                            <div class="exp_links">
                                <a href="<?= $fetch_places['fb_link']; ?>" target="_blank"><i class='bx bxl-facebook-circle icons_'></i></a>
                                <a href="<?= $fetch_places['web_link']; ?>" target="_blank"><i class='bx bx-globe icons_'></i></a>
                                <!-- <a href="<?= $fetch_places['gmail_link']; ?>" target="_blank"><i class='bx bxs-envelope icons_'></i></a> -->
                                <!-- <a href="<?= $fetch_places['phone_link']; ?>" target="_blank"><i class='bx bxs-phone icons_'></i></a> -->
                                <a href="<?= $fetch_places['map_link']; ?>" target="_blank"><i class='bx bxs-map icons_'></i></a>
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
                <div class="what_to_do">
                    <div class="exp_category">
                        <h4>Cultural and Natural Attractions</h4>
                    </div>
                    <div class="exp_contents_">
                        <?php
                            $select_places = $conn->prepare("SELECT * FROM `attractions` ORDER BY RAND()"); 
                            $select_places->execute();
                            if($select_places->rowCount() > 0){
                            while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
                        ?> 
                        <div class="weekend_gateaway">
                            <div class="exp_img_box">
                            <a href="quickview.php?pid=<?= $fetch_places['id']; ?>">
                                <img src="img/tourist/<?= $fetch_places['img1']; ?>" alt="">
                            </a>
                            </div>
                            <div class="exp_place">
                                <b><?= $fetch_places['place_name']; ?></b>
                            </div>
                            <div class="exp_links">
                                <a href="<?= $fetch_places['fb_link']; ?>" target="_blank"><i class='bx bxl-facebook-circle icons_'></i></a>
                                <a href="<?= $fetch_places['web_link']; ?>" target="_blank"><i class='bx bx-globe icons_'></i></a>
                                <!-- <a href="<?= $fetch_places['gmail_link']; ?>" target="_blank"><i class='bx bxs-envelope icons_'></i></a> -->
                                <!-- <a href="<?= $fetch_places['phone_link']; ?>" target="_blank"><i class='bx bxs-phone icons_'></i></a> -->
                                <a href="<?= $fetch_places['map_link']; ?>" target="_blank"><i class='bx bxs-map icons_'></i></a>
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
                <div class="what_to_do">
                    <div class="exp_category">
                        <h4>Souvenirs</h4>
                    </div>
                    <div class="exp_contents_">
                        <?php
                            $select_places = $conn->prepare("SELECT * FROM `souvenirs` ORDER BY RAND()"); 
                            $select_places->execute();
                            if($select_places->rowCount() > 0){
                            while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
                        ?> 
                        <div class="weekend_gateaway">
                            <div class="exp_img_box">
                            <a href="quickview.php?pid=<?= $fetch_places['id']; ?>">
                                <img src="img/tourist/<?= $fetch_places['img1']; ?>" alt="">
                            </a>
                            </div>
                            <div class="exp_place">
                                <b><?= $fetch_places['place_name']; ?></b>
                            </div>
                            <div class="exp_links">
                                <a href="<?= $fetch_places['fb_link']; ?>" target="_blank"><i class='bx bxl-facebook-circle icons_'></i></a>
                                <a href="<?= $fetch_places['web_link']; ?>" target="_blank"><i class='bx bx-globe icons_'></i></a>
                                <!-- <a href="<?= $fetch_places['gmail_link']; ?>" target="_blank"><i class='bx bxs-envelope icons_'></i></a> -->
                                <!-- <a href="<?= $fetch_places['phone_link']; ?>" target="_blank"><i class='bx bxs-phone icons_'></i></a> -->
                                <a href="<?= $fetch_places['map_link']; ?>" target="_blank"><i class='bx bxs-map icons_'></i></a>
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
    </section>

</body>
</html>
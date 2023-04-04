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
    <section class="section">
        <div class="seemore_container container">
            <div class="title_">Gastronomic Experience</div>
            
            <div class="seemore_contents">
                <?php
                    $select_places = $conn->prepare("SELECT * FROM `gastronomic_exp` ORDER BY RAND()"); 
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
                    <div class="more">
                        <div class="left_side">
                            <div class="exp_img_box">
                                <img src="img/tourist/<?= $fetch_places['img1']; ?>" alt="">
                            </div>
                        </div>
                        <div class="right_side">
                            <p><?= $fetch_places['description']; ?></p>
                            
                            <a href="quickview.php?pid=<?= $fetch_places['id']; ?>">
                                <button class="visit_btn">Visit Now</button>
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
</body>
</html>
<?php

include 'components/connect.php'

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

        <header id="header">
            <?php include 'components/header.php'; ?>
        </header>
            <br><br>
            <br><br>
            <br><br>
        <section class="search section" id="search">
        <div class="exp_container container">
            <div class="search_bar">
                <form action="" method="post" id="search_form">
                    <input type="textbox" name="search_box" id="search-box" placeholder="Search places">
                    <button type="submit" class="bx bx-search icons_" name="search_btn"></button>
                </form>
            </div>
            <div class="what_to_do">
                <div class="exp_category">
                    <h4>Weekend Gateaway</h4>
                    
                </div>
                <div class="exp_grid">
                    <?php
                       if(isset($_POST['search_box']) OR isset($_POST['search_btn'])){
                        $search_box = $_POST['search_box'];
                        $select_places = $conn->prepare("SELECT * FROM `weekend_gateaway` WHERE search LIKE '%{$search_box}%'");
                        $select_places->execute();
                        if($select_places->rowCount() > 0){
                         while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
                    ?> 
                    <div class="weekend_gateaway">
                        <div class="exp_img_box">
                        <a href="quickview.php?pid=<?= $fetch_places['id']; ?>">
                            <img id="<?= $fetch_places['id']; ?>" tbl="weekend_gateaway" thumbnail src="img/tourist/<?= $fetch_places['img1']; ?>" >
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
                                <p id="display_weekend_gateaway_<?= $fetch_places['id']; ?>"><?= $fetch_places['views']; ?></p>    
                                <i class="uil uil-eye icons_"></i>                          
                            </div>
                        </div>
                    </div>
                    <?php
                    }
                    }else{
                        echo '<p class="empty">No places found!</p>';
                    }
                }
                    ?>
                </div>
            </div>
            <div class="what_to_do">
                <div class="exp_category">
                    <h4>Gastronomic Experience</h4>
                    
                </div>
                <div class="exp_grid">
                    <?php
                        if(isset($_POST['search_box']) OR isset($_POST['search_btn'])){
                            $search_box = $_POST['search_box'];
                            $select_places = $conn->prepare("SELECT * FROM `gastronomic_exp` WHERE search LIKE '%{$search_box}%'"); 
                            $select_places->execute();
                            if($select_places->rowCount() > 0){
                             while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
                    ?> 
                    <div class="gastronomic_exp">
                        <div class="exp_img_box">
                        <a href="quickview.php?pid=<?= $fetch_places['id']; ?>">
                            <img id="<?= $fetch_places['id']; ?>" tbl="gastronomic_exp" thumbnail src="img/tourist/<?= $fetch_places['img1']; ?>" alt="">
                        </a>
                        </div>
                        <div class="exp_place">
                            <b><?= $fetch_places['place_name']; ?></b>
                        </div>
                        <div class="exp_icons">
                            <div class="exp_links">
                                <a href="<?= $fetch_places['fb_link']; ?>" target="_blank"><i class='bx bxl-facebook-circle icons_'></i></a>
                                <a href="<?= $fetch_places['web_link']; ?>" target="_blank"><i class='bx bx-globe icons_'></i></a>
                                <!-- <a href="<?= $fetch_places['gmail_link']; ?>" target="_blank"><i class='bx bxs-envelope icons_'></i></a> -->
                                <!-- <a href="<?= $fetch_places['phone_link']; ?>" target="_blank"><i class='bx bxs-phone icons_'></i></a> -->
                                <a href="<?= $fetch_places['map_link']; ?>" target="_blank"><i class='bx bxs-map icons_'></i></a>
                            </div>
                            <div class="view_count">
                                <p id="display_gastronomic_exp_<?= $fetch_places['id']; ?>"><?= $fetch_places['views']; ?></p>    
                                <i class="uil uil-eye icons_"></i>                          
                            </div>
                        </div>
                    </div>
                    <?php
                    }
                    }else{
                        echo '<p class="empty">No places found!</p>';
                    }
                }
                    ?>
                </div>
            </div>
            <div class="what_to_do">
                <div class="exp_category">
                    <h4>Cultural and Natural Attractions</h4>
                    
                </div>
                <div class="exp_grid">
                    <?php
                        if(isset($_POST['search_box']) OR isset($_POST['search_btn'])){
                            $search_box = $_POST['search_box'];
                            $select_places = $conn->prepare("SELECT * FROM `attractions` WHERE search LIKE '%{$search_box}%'"); 
                            $select_places->execute();
                            if($select_places->rowCount() > 0){
                             while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
                    ?> 
                    <div class="attractions">
                        <div class="exp_img_box">
                        <a href="quickview.php?pid=<?= $fetch_places['id']; ?>">
                            <img id="<?= $fetch_places['id']; ?>" tbl="attractions" thumbnail src="img/tourist/<?= $fetch_places['img1']; ?>" alt="">
                        </a>
                        </div>
                        <div class="exp_place">
                            <b><?= $fetch_places['place_name']; ?></b>
                        </div>
                        <div class="exp_icons">
                            <div class="exp_links">
                                <a href="<?= $fetch_places['fb_link']; ?>" target="_blank"><i class='bx bxl-facebook-circle icons_'></i></a>
                                <a href="<?= $fetch_places['web_link']; ?>" target="_blank"><i class='bx bx-globe icons_'></i></a>
                                <!-- <a href="<?= $fetch_places['gmail_link']; ?>" target="_blank"><i class='bx bxs-envelope icons_'></i></a> -->
                                <!-- <a href="<?= $fetch_places['phone_link']; ?>" target="_blank"><i class='bx bxs-phone icons_'></i></a> -->
                                <a href="<?= $fetch_places['map_link']; ?>" target="_blank"><i class='bx bxs-map icons_'></i></a>
                            </div>
                            <div></div>
                            <div class="view_count">
                                <p id="display_attractions_<?= $fetch_places['id']; ?>"><?= $fetch_places['views']; ?></p>    
                                <i class="uil uil-eye icons_"></i>                          
                            </div>
                        </div>
                    </div>
                    <?php
                    }
                    }else{
                        echo '<p class="empty">No places found!</p>';
                    }
                }
                    ?>
                </div>
            </div>
            <div class="what_to_do">
                <div class="exp_category">
                    <h4>Souvenirs</h4>
                    
                </div>
                <div class="exp_grid">
                    <?php
                        if(isset($_POST['search_box']) OR isset($_POST['search_btn'])){
                        $search_box = $_POST['search_box'];
                        $select_places = $conn->prepare("SELECT * FROM `souvenirs` WHERE search LIKE '%{$search_box}%'"); 
                        $select_places->execute();
                        if($select_places->rowCount() > 0){
                            while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
                    ?> 
                    <div class="souvenirs">
                        <div class="exp_img_box">
                        <a href="quickview.php?pid=<?= $fetch_places['id']; ?>">
                            <img id="<?= $fetch_places['id']; ?>" tbl="souvenirs" thumbnail src="img/tourist/<?= $fetch_places['img1']; ?>" alt="">
                        </a>
                        </div>
                        <div class="exp_place">
                            <b><?= $fetch_places['place_name']; ?></b>
                        </div>
                        <div class="exp_icons">
                            <div class="exp_links">
                                <a href="<?= $fetch_places['fb_link']; ?>" target="_blank"><i class='bx bxl-facebook-circle icons_'></i></a>
                                <a href="<?= $fetch_places['web_link']; ?>" target="_blank"><i class='bx bx-globe icons_'></i></a>
                                <!-- <a href="<?= $fetch_places['gmail_link']; ?>" target="_blank"><i class='bx bxs-envelope icons_'></i></a> -->
                                <!-- <a href="<?= $fetch_places['phone_link']; ?>" target="_blank"><i class='bx bxs-phone icons_'></i></a> -->
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
                }
                    ?>
                </div>
            </div>
        </div>
        </section>
        <?php include 'components/footer.php' ?>
        
        <script src="js/script.js"></script>
        <script src="js/viewCount.js"></script>

</body>
</html>
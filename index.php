<?php

include 'components/connect.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
    <link rel="stylesheet" href="css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,300;1,200;1,800&family=Paytone+One&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Rowdies:wght@300;700&family=Rubik:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <title>San Juan Travel</title>
</head>
<body>

    <header id="header">
        <?php include 'components/header.php'; ?>
    </header>
    
    <section class="home_ section" id="home">
        <div class="home_text">
            <h1>Welcome to <br> San Juan, Batangas</h1>
            <p>
                The Eastern Gateaway of Batangas. Home of the 
                Lambayok Festival. There are more of our senses...<br> 
                land, air and sea. Come and experience the nostalgic and 
                fun San Juan.
            </p>
            <a href="#plan" class="home_btn">Let's go now</a>
        </div>
    </section>

    <section class="plan_ section" id="plan">
        <div class="plan_text">
            <h2>Let's plan San Juan</h2>
            <p>
                Whether you're looking for a weekend getaway or a gastomic experience,
                there's sure to be a destination that's perfect for you at San Juan, Batangas.
            </p>
        </div>
        <div class="plan_grid">
            <div class="plan_container_box">
                <a href="travel-information.php">
                    <div class="plan_container_img">
                        <i class='bx bxs-car icons_'></i>
                    </div>
                    <h5>Travel Guidelines</h5>
                </a>
            </div>
            <div class="plan_container_box">
                <a href="wg-see-more.php">
                    <div class="plan_container_img">
                        <i class='bx bx-swim icons_' ></i>
                    </div>
                    <h5>Beach Resorts</h5>
                </a> 
            </div>
            <div class="plan_container_box">
                <a href="">
                    <div class="plan_container_img">
                        <i class='bx bx-run icons_' ></i>
                    </div>
                    <h5>Outdoor Activities</h5>
                </a>
            </div>
            <div class="plan_container_box">
                <a href="">
                    <div class="plan_container_img">
                        <i class='bx bxs-hotel icons_' ></i>
                    </div>
                    <h5>Hotels</h5>
                </a>
            </div>
            <div class="plan_container_box">
                <a href="gs-see-more.php">
                    <div class="plan_container_img">
                        <i class='bx bxs-bowl-hot icons_' ></i>
                    </div>
                    <h5>Dining</h5>
                </a>
            </div>
            <div class="plan_container_box">
                <a href="maps.php">
                    <div class="plan_container_img">
                        <i class='bx bx-map-alt icons_' ></i>
                    </div>
                    <h5>Map</h5>
                </a>
            </div>
        </div>
    </section>

    <section class="experience_ section" id="experience">
        <div class="exp_container container">
            <div class="title_">
                Experience San Juan
            </div>
                <p>Our remarkable places are ready for your visit. Browse these options to find your next destination.</p>
            
            <div class="what_to_do">
                <div class="exp_category">
                    <h4>Weekend Gateaway</h4>
                    <a href="wg-see-more.php">See more</a>
                </div>
                <div class="exp_grid">
                    <?php
                        $select_places = $conn->prepare("SELECT * FROM `weekend_gateaway` ORDER BY RAND() LIMIT 5"); 
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
                    ?>
                </div>
            </div>
            <div class="what_to_do">
                <div class="exp_category">
                    <h4>Gastronomic Experience</h4>
                    <a href="gs-see-more.php">See more</a>
                </div>
                <div class="exp_grid">
                    <?php
                        $select_places = $conn->prepare("SELECT * FROM `gastronomic_exp` ORDER BY RAND() LIMIT 5"); 
                        $select_places->execute();
                        if($select_places->rowCount() > 0){
                        while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
                    ?> 
                    <div class="weekend_gateaway">
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
                    ?>
                </div>
            </div>
            <div class="what_to_do">
                <div class="exp_category">
                    <h4>Cultural and Natural Attractions</h4>
                    <a href="#">See more</a>
                </div>
                <div class="exp_grid">
                    <?php
                        $select_places = $conn->prepare("SELECT * FROM `attractions` ORDER BY RAND() LIMIT 5"); 
                        $select_places->execute();
                        if($select_places->rowCount() > 0){
                        while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
                    ?> 
                    <div class="weekend_gateaway">
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
                    ?>
                </div>
            </div>
            <div class="what_to_do">
                <div class="exp_category">
                    <h4>Souvenirs</h4>
                    <a href="#">See more</a>
                </div>
                <div class="exp_grid">
                    <?php
                        $select_places = $conn->prepare("SELECT * FROM `souvenirs` ORDER BY RAND() LIMIT 5"); 
                        $select_places->execute();
                        if($select_places->rowCount() > 0){
                        while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
                    ?> 
                    <div class="weekend_gateaway">
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
                    ?>
                </div>
            </div>
        </div>
    </section>

    <section class="testimonials_ section" id="testimonials">
    <div class="title_">I Experienced San Juan</div>
    <div class="testimonials_container testimonial_grid">
        <div class="testimonials_content">
                <div class="testimonial_img">
                    <img src="img/juandelacruz.jpg" alt="">
                </div>  
                <i class='bx bxs-quote-left icons_'></i>
                <h3>Juan Dela Cruz</h3>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
                    nisi ut aliquip ex ea commodo consequat. 
                </p>
                <div class="ratings">
                    <i class='bx bxs-star ratings_'></i>
                    <i class='bx bxs-star ratings_'></i>
                    <i class='bx bxs-star ratings_'></i>
                    <i class='bx bxs-star ratings_'></i>
                    <i class='bx bx-star ratings_' ></i>
                </div>
        </div>
        <div class="testimonials_content">
                <div class="testimonial_img">
                    <img src="img/juandelacruz.jpg" alt="">
                </div>  
                <i class='bx bxs-quote-left icons_'></i>
                <h3>Juan Dela Cruz</h3>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
                    nisi ut aliquip ex ea commodo consequat. 
                </p>
                <div class="ratings">
                    <i class='bx bxs-star ratings_'></i>
                    <i class='bx bxs-star ratings_'></i>
                    <i class='bx bxs-star ratings_'></i>
                    <i class='bx bxs-star ratings_'></i>
                    <i class='bx bx-star ratings_' ></i>
                </div>
        </div>
        <div class="testimonials_content">
                <div class="testimonial_img">
                    <img src="img/juandelacruz.jpg" alt="">
                </div>  
                <i class='bx bxs-quote-left icons_'></i>
                <h3>Juan Dela Cruz</h3>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
                    nisi ut aliquip ex ea commodo consequat. 
                </p>
                <div class="ratings">
                    <i class='bx bxs-star ratings_'></i>
                    <i class='bx bxs-star ratings_'></i>
                    <i class='bx bxs-star ratings_'></i>
                    <i class='bx bxs-star ratings_'></i>
                    <i class='bx bx-star ratings_' ></i>
                </div>
        </div>
        </div>
        <div class="testimonials_footer">
            <p>Read more Experiences.</p>
            <a href="https://www.facebook.com/juanderfulsanjuan/reviews" target="_blank" class="testimonials_btn">
                <i class='bx bxl-facebook icons_' ></i>
                Follow us on Facebook
            </a>
        </div>
    
</section>
    
<section class="instagram_ section" id="instagram">
    <div class="instagram_container container">
        <h1>@juanderfulsanjuan</h1>
        <div class="instagram_content instagram_grid">
            <?php
                $select_places = $conn->prepare("SELECT * FROM `ig_post` ORDER BY RAND() LIMIT 8"); 
                $select_places->execute();
                if($select_places->rowCount() > 0){
                while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
            ?> 
            <img src="img/ig<?= $fetch_places['img']; ?>">
            <?php
            }
            }else{
                echo '<p class="empty">No post found!</p>';
            }
            ?>
            </div>
        <div class="testimonials_footer">
            <br>
            <p>View more stories.</p>
            <a href="https://www.instagram.com/juanderfulsanjuan/" target="_blank" class="testimonials_btn">
                <i class='bx bxl-instagram icons_' ></i>
                Follow us on Instagram
            </a>
        </div>
    </div>
</section>
<?php include 'components/footer.php'; ?>

    <script src="js/script.js"></script>
    <script src="js/viewCount.js"></script>
</body>
</html>




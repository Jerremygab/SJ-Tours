<?php

include 'components/connect.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Maps</title>
   

   <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <?php include 'components/header.php' ?>
    </header>
    
    <section class="section">
        <div class="map_container container">
            <div class="title_">San Juan Batangas</div>
            <br>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d124001.07556814318!2d121.42587450566738!3d13.776846635453381!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd3b0f51ae56a7%3A0x3503f98f2afe74ee!2sSan%20Juan%2C%20Batangas!5e0!3m2!1sen!2sph!4v1680351065097!5m2!1sen!2sph" 
            width="100%" height="750" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </section>
    <?php include 'components/footer.php' ?>
    <script src="js/script.js"></script>
</body>
</html>
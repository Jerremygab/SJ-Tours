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
    <section class="section events" >
        <div class="events_container container">
            <div class="title_">Upcoming Events</div>
            <div class="events_contents">
                <?php 
                    
                    $sql = "SELECT * FROM `events` ORDER BY date";

                    $select_places = $conn->prepare($sql); 
                    $select_places->execute();
                    if($select_places->rowCount() > 0){
                    while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
                    
                ?>
                    
                <div class="events_list">
                    <div class="list_content">
                        <img src="img/events<?= $fetch_places['img1']; ?>">
                        <b><?= $fetch_places['name']; ?></b>
                        <b><?= $fetch_places['date']; ?></b>
                        <?= $fetch_places['location']; ?>
                        <p><?= $fetch_places['description']; ?></p>
                    </div>
                </div>

                <?php
                }
                  
                }else{
                    echo '<p class="empty">No events found!</p>';
                }
                ?>
            </div>
        </div>
    </section>
    <?php include 'components/footer.php'; ?>

    <script src="js/script.js"></script>
    <script src="js/viewCount.js"></script>
    <script>
    tblPage="weekend_gateaway";
    </script>

    <script src="js/seeMore.js"></script>
</body>
</html>
      

<?php

include 'components/connect.php';

if(isset($_POST['add_review'])){

   $pid = $_POST['place_id'];
   $placename = $_POST['place_name'];
   $date = $_POST['date'];
   $name = $_POST['fullname'];
   $msg = $_POST['message'];
   $ratings = $_POST['ratings'];

   $image_01 = $_FILES['files']['name'];
   $image_01 = filter_var($image_01, FILTER_SANITIZE_STRING);
   $image_size_01 = $_FILES['files']['size'];
   $image_tmp_name_01 = $_FILES['files']['tmp_name'];
   $image_folder_01 = 'img/reviews/'.$image_01;
   
   $image_02 = $_FILES['files2']['name'];
   $image_02 = filter_var($image_02, FILTER_SANITIZE_STRING);
   $image_size_02 = $_FILES['files2']['size'];
   $image_tmp_name_02 = $_FILES['files2']['tmp_name'];
   $image_folder_02 = 'img/reviews/'.$image_02;

   $image_03 = $_FILES['files3']['name'];
   $image_03 = filter_var($image_03, FILTER_SANITIZE_STRING);
   $image_size_03 = $_FILES['files3']['size'];
   $image_tmp_name_03 = $_FILES['files3']['tmp_name'];
   $image_folder_03 = 'img/reviews/'.$image_03;

   $select_message = $conn->prepare("SELECT * FROM `reviews` WHERE place_id = ? AND place_name = ? AND date = ? AND fullname = ? AND message = ? AND ratings = ? AND image1 = ? AND image2 = ? AND image3 = ?");
   $select_message->execute([$pid, $placename, $date, $name, $msg, $ratings, $image_01, $image_02, $image_03]);

   if($select_message->rowCount() > 0){
      $message[] = 'Review Sent!';
   }else{

      $insert_message = $conn->prepare("INSERT INTO reviews (place_id, place_name, date, fullname, message, ratings, image1, image2, image3) VALUES(?,?,?,?,?,?,?,?,?)");
      $insert_message->execute([$pid, $placename, $date, $name, $msg, $ratings,$image_01, $image_02, $image_03]);
      if($insert_message){
        if($image_size_01 > 5000000 OR  $image_size_02 > 5000000 OR $image_size_03 > 5000000){
           $message[] = 'Image size is too large!';
        }else{
           move_uploaded_file($image_tmp_name_01, $image_folder_01);
           move_uploaded_file($image_tmp_name_02, $image_folder_02);
           move_uploaded_file($image_tmp_name_03, $image_folder_03);
           $message[] = 'New reviews added!';
        }
     }

   }
}


?>

<div class="review_" id="review">
         <div class="events_container container">
            <div class="events_contents">
                <?php 
                    
                    $sql = "SELECT * FROM `reviews` WHERE place_id='$pid'";

                    $select_places = $conn->prepare($sql); 
                    $select_places->execute();
                    if($select_places->rowCount() > 0){
                    while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
                    
                ?>
                    
                <div class="review_container container">
                  <div class="review_contents">
                    <div class="review_header">
                      <img src="img/dp.png" alt="">
                      <div class="review_header-det">
                        <?php 
                          if($fetch_places['fullname'] == ''){
                            echo "<b>Anonymous</b>";
                          } else{
                            echo "<b>".$fetch_places['fullname']."</b>";
                          }

                        ?>
                        <p><i><?= $fetch_places['date']; ?></i></p>
                      </div>
                    </div>
                    <div class="review_body">
                      <?php 

                        if($fetch_places['ratings'] == 5){
                          echo "<i class='bx bxs-star rates'></i>
                                <i class='bx bxs-star rates'></i>
                                <i class='bx bxs-star rates'></i>
                                <i class='bx bxs-star rates'></i>
                                <i class='bx bxs-star rates'></i>";
                        } 
                        else if($fetch_places['ratings'] == 4){
                          echo "<i class='bx bxs-star rates'></i>
                                <i class='bx bxs-star rates'></i>
                                <i class='bx bxs-star rates'></i>
                                <i class='bx bxs-star rates'></i>
                                <i class='bx bx-star rates'></i>";
                        }
                        else if($fetch_places['ratings'] == 3){
                          echo "<i class='bx bxs-star rates'></i>
                                <i class='bx bxs-star rates'></i>
                                <i class='bx bxs-star rates'></i>
                                <i class='bx bx-star rates'></i>
                                <i class='bx bx-star rates'></i>";
                        }
                        else if($fetch_places['ratings'] == 2){
                          echo "<i class='bx bxs-star rates'></i>
                                <i class='bx bxs-star rates'></i>
                                <i class='bx bx-star rates'></i>
                                <i class='bx bx-star rates'></i>
                                <i class='bx bx-star rates'></i>";
                        }
                        else if($fetch_places['ratings'] == 1){
                          echo "<i class='bx bxs-star rates'></i>
                                <i class='bx bx-star rates'></i>
                                <i class='bx bx-star rates'></i>
                                <i class='bx bx-star rates'></i>
                                <i class='bx bx-star rates'></i>";
                        }
                        else{
                          echo "<i class='bx bx-star rates'></i>
                                <i class='bx bx-star rates'></i>
                                <i class='bx bx-star rates'></i>
                                <i class='bx bx-star rates'></i>
                                <i class='bx bx-star rates'></i>";
                        }
                      
                      ?>
                      <p><?= $fetch_places['message']; ?></p>
                    </div>
                    <div class="review_img">
                      <img src="img/reviews/<?= $fetch_places['image1']; ?>" alt="">
                      <img src="img/reviews/<?= $fetch_places['image2']; ?>" alt="">
                      <img src="img/reviews/<?= $fetch_places['image3']; ?>" alt="">
                    </div>
                  </div>
                </div>

                <?php
                }
                  
                }else{
                    echo '<p class="empty">No reviews found!</p>';
                }
                ?>
            </div>
            <br>
            <button class="rev-btn" onclick="addReview()">Add Review</button>
        </div>
         
         <div class="add-review_container add-review_grid d-none" id="add-review">
            <div></div>
            <div class="add-review_content row_">
               
               <form action="#" method="post" id="review_form" enctype="multipart/form-data">
               <h4>Share your experience</h4>
               <br>
                  <div class="fullname">
                    <input type="text" placeholder="Name" name="fullname" id="name_input" >
                  </div>
                  <div class="message">
                    <textarea name="message" placeholder="Write your experience" id="message_input" cols="30" rows="5" required></textarea>
                  </div>
                  <div class="message">
                    <input type="file" name="files" accept="image/jpg, image/jpeg, image/png, image/webp" class="box">
                    <input type="file" name="files2" accept="image/jpg, image/jpeg, image/png, image/webp" class="box">
                    <input type="file" name="files3" accept="image/jpg, image/jpeg, image/png, image/webp" class="box">
                  </div>
                  <br>
                  <div class="rates">
                    <p>How's your experience?</p>
                      <input type="radio" value="5" name="ratings" required> 5 - Excellent </input><br>
                      <input type="radio" value="4" name="ratings"> 4 - Great</input><br>
                      <input type="radio" value="3" name="ratings"> 3 - Good</input><br>
                      <input type="radio" value="2" name="ratings"> 2 - Bad</input><br>
                      <input type="radio" value="1" name="ratings"> 1 - Very Bad</input><br>
                  </div>
                  <div class="d-none">
                    <?php
                      $pid = $_GET['pid'];
                      $select_places = $conn->prepare("SELECT * FROM  `gastronomic_exp` WHERE id = ?"); 
                      $select_places->execute([$pid]);
                      if($select_places->rowCount() > 0){
                        while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
                    ?>
                    
                    <textarea name="place_name" cols="30" rows="5"><?= $fetch_places['place_name']; ?></textarea>
                    <textarea name="place_id" cols="30" rows="5"><?= $fetch_places['id']; ?></textarea>
                    <textarea name="date" cols="30" rows="5"><?php $currentDate = date('Y-m-d'); echo $currentDate; ?></textarea>
                  </div>
                    <?php
                        }
                      }
                    ?>
                  <br>
                  <div class="submit">
                    <input type="submit" name="add_review" value="Submit" id="form_button" onclick="reviewSent()"/>
                  </div>
                </form>
            </div>
         </div> 
      </div>
      

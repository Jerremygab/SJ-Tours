<?php

include 'components/connect.php';

if(isset($_POST['add_review'])){

   $pid = $_POST['place_id'];
   $pid = filter_var($pid, FILTER_SANITIZE_STRING);
   $placename = $_POST['place_name'];
   $placename = filter_var($placename, FILTER_SANITIZE_STRING);
   $date = $_POST['date'];
   $date = filter_var($date, FILTER_SANITIZE_STRING);
   $name = $_POST['fullname'];
   $name = filter_var($name, FILTER_SANITIZE_STRING);
   $subject = $_POST['subject'];
   $subject = filter_var($subject, FILTER_SANITIZE_STRING);
   $msg = $_POST['message'];
   $msg = filter_var($msg, FILTER_SANITIZE_STRING);


   $select_message = $conn->prepare("SELECT * FROM `reviews` WHERE place_id = ? AND place_name = ? AND date = ? AND fullname = ? AND subject = ? AND message = ?");
   $select_message->execute([$pid, $placename, $date, $name, $subject, $msg]);

   if($select_message->rowCount() > 0){
      $message[] = 'Review Sent!';
   }else{

      $insert_message = $conn->prepare("INSERT INTO `reviews`(place_id, place_name, date, fullname, subject, message, image) VALUES(?,?,?,?,?,?)");
      $insert_message->execute([$pid, $placename, $name, $date, $subject, $msg]);

      $message[] = 'Review sent';

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
                    
                <div class="events_list">
                    <div class="list_content">
                        <img src="img/dp.png ?>">
                        <b>Name:</b> <p><?= $fetch_places['fullname']; ?></p>
                        <b>Subject:</b> <p><?= $fetch_places['subject']; ?></p>
                        <b>Experience:</b> <p><?= $fetch_places['message']; ?></p>
                    </div>
                </div>

                <?php
                }
                  
                }else{
                    echo '<p class="empty">No reviews found!</p>';
                }
                ?>
            </div>
            <button onclick="addReview()">Add Review</button>
        </div>
         
         <div class="review_container review_grid d-none" id="add-review">
            <div></div>
            <div class="review_content row_">
               
               <form action="#" method="post" id="review_form">
               <h4>Share your experience</h4>
               <br>
                  <div class="fullname">
                    <label for="name"></label>
                    <input type="text" placeholder="Name" name="fullname" id="name_input" >
                  </div>
                  <div class="subject">
                    <label for="subject"></label>
                    <input type="text" placeholder="subject" name="subject" id="subject_input">
                  </div>
                  <div class="message">
                    <label for="message"></label>
                    <textarea name="message" placeholder="Write your experience" id="message_input" cols="30" rows="5" required></textarea>
                  </div>
                  <!-- <div class="message">
                    <label for="message"></label>
                    <input type="file" name="image" accept="image/jpg, image/jpeg, image/png, image/webp" class="box" required>
                  </div> -->
                  
                  <div class="submit">
                    <input type="submit" name="add_review" value="Share" id="form_button" onclick="reviewSent()"/>
                  </div>

                  <div class="d-none">
                    <textarea name="place_name" cols="30" rows="5"><?= $fetch_places['place_name']; ?></textarea>
                    <textarea name="place_id" cols="30" rows="5"><?= $fetch_places['id']; ?></textarea>
                    <textarea name="date" cols="30" rows="5"><?php $currentDate = date('Y-m-d'); echo $currentDate; ?></textarea>
                  </div>

                </form>
            </div>
         </div> 
      </div>


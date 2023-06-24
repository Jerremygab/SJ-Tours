<?php

include 'components/connect.php';


if(isset($_POST['submit'])){

   $pid = $_POST['place_id'];
   $pid = filter_var($pid, FILTER_SANITIZE_STRING);
   $placename = $_POST['place_name'];
   $placename = filter_var($placename, FILTER_SANITIZE_STRING);
   $name = $_POST['username'];
   $name = filter_var($name, FILTER_SANITIZE_STRING);
   $text = $_POST['text'];
   $text = filter_var($text, FILTER_SANITIZE_STRING);
   $subject = $_POST['subject'];
   $subject = filter_var($subject, FILTER_SANITIZE_STRING);

   $select_message = $conn->prepare("SELECT * FROM `reviews` WHERE place_id = ? AND place_name = ? AND fullname = ? AND email = ? AND subject = ? AND message = ?");
   $select_message->execute([ $pid, $placename,$name, $email, $number, $msg]);

   if($select_message->rowCount() > 0){
      $message[] = 'Reviews Added';
   }else{

      $insert_message = $conn->prepare("INSERT INTO `reviews`(place_id, place_name, fullname, email, number, message) VALUES(?,?,?,?,?,?)");
      $insert_message->execute([ $pid, $placename, $name, $email, $number, $msg]);

      $message[] = 'New reviews added!';

   }
}

?>


<div class="contact_" id="contact">
         <div class="title_">Get in touch</div>
         
         <div class="contact_container contact_grid">
            <div class="contact_content row_">
              <div class="joker">
                <br><br>
                <br><br>
              </div>
               
               <div class="contact_details">
                    <b>Phone Number</b>
                    <p><?= $fetch_places['phone_link1']; ?></p>
                    <p><?= $fetch_places['phone_link2']; ?></p>
                    <hr>
               </div>
               <div class="contact_details">
                    <b>Email</b>
                    <p><?= $fetch_places['gmail_link1']; ?></p>
                    <p><?= $fetch_places['gmail_link2']; ?></p>
                    <hr>
               </div>
               <div class="contact_details">
                    <b>Address</b>
                    <p><?= $fetch_places['location']; ?></p>
                    <hr>
               </div>
            </div>
            <div class="contact_content row_">
               <form action="#" method="post" id="contact_form">
                  <div class="fullname">
                    <label for="name"></label>
                    <input type="text" placeholder="Name" name="fullname" id="name_input" >
                  </div>
                  <div class="email">
                    <label for="email"></label>
                    <input type="email" placeholder="Email" name="email1" id="email_input" required>
                    <textarea class="d-none" name="email" cols="30" rows="5"><?= $fetch_places['gmail_link1']; ?></textarea>
                  </div>
                  <div class="telephone">
                    <label for="number"></label>
                    <input type="number" placeholder="Phone number" name="number" id="telephone_input" maxlength="100">
                  </div>
                  <div class="message">
                    <label for="message"></label>
                    <textarea name="message" placeholder="I'd like to chat about" id="message_input" cols="30" rows="5" required></textarea>
                  </div>
                  <div class="submit">
                    <input type="submit" name="submit" value="Send Message" id="form_button" onclick="messageSent()"/>
                  </div>

                  <div class="d-none">
                    <textarea name="place_name" cols="30" rows="5"><?= $fetch_places['place_name']; ?></textarea>
                    <textarea name="place_id" cols="30" rows="5"><?= $fetch_places['id']; ?></textarea>
                  </div>

                  <?php
                  if(isset($_POST['submit'])){
                    $url = "https://script.google.com/macros/s/AKfycbx8uDN17odVqSVDy3PVwXARfBZWHvtRYml-nRjlCdM5lpEEkNroADXDZhmcmdG5gKRDMA/exec";
                    $ch = curl_init($url);
                    curl_setopt_array($ch,[
                     CURLOPT_RETURNTRANSFER => true,
                     CURLOPT_POSTFIELDS => http_build_query([
                       "recipient" => $_POST['email'],
                       "subject" => $_POST['email1'],
                       "body" => $_POST['message']
                     ])
                     ]);
                     $result = curl_exec($ch);
                  }
                  ?>
                </form>
            </div>
         </div>
        <div class="embedded_map">
            <div class="title_">We're Located at</div>
            <br><br>
            <iframe src="<?= $fetch_places['embedded_map']; ?>" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" id="gmap"></iframe>
        </div>  
      </div>


<?php

include 'components/connect.php';


if(isset($_POST['submit'])){

   $pid = $_POST['place_id'];
   $pid = filter_var($pid, FILTER_SANITIZE_STRING);
   $placename = $_POST['place_name'];
   $placename = filter_var($placename, FILTER_SANITIZE_STRING);
   $name = $_POST['fullname'];
   $name = filter_var($name, FILTER_SANITIZE_STRING);
   $email = $_POST['email'];
   $email = filter_var($email, FILTER_SANITIZE_STRING);
   $number = $_POST['number'];
   $number = filter_var($number, FILTER_SANITIZE_STRING);
   $msg = $_POST['message'];
   $msg = filter_var($msg, FILTER_SANITIZE_STRING);

   $select_message = $conn->prepare("SELECT * FROM `contact_form` WHERE place_id = ? AND place_name = ? AND fullname = ? AND email = ? AND number = ? AND message = ?");
   $select_message->execute([ $pid, $placename,$name, $email, $number, $msg]);

   if($select_message->rowCount() > 0){
      $message[] = 'Already sent message!';
   }else{

      $insert_message = $conn->prepare("INSERT INTO `contact_form`(place_id, place_name, fullname, email, number, message) VALUES(?,?,?,?,?,?)");
      $insert_message->execute([ $pid, $placename, $name, $email, $number, $msg]);

      $message[] = 'Sent message successfully!';

   }
}

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
    <br><br><br>
    <br><br><br>
    <section class="section">
        <div class="map_container container">
            <div class="title_">San Juan Batangas</div>
            <br>
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
                    <p>(+63) 961 955 2607</p>
                    <p>(+63) 977 156 8826</p>
                    <hr>
               </div>
               <div class="contact_details">
                    <b>Email</b>
                    <p>tourism@sanjuanbatangas.gov.ph</p>
                    <p>sanjuantourismwebsite@gmail.com</p>

                    <hr>
               </div>
               <div class="contact_details">
                    <b>Address</b>
                    <p>Municipal Tourism Reception Area, San Juan, Philippines</p>
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
                    <textarea class="d-none" name="email" cols="30" rows="5">sanjuantourismwebsite@gmail.com</textarea>
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
                    <textarea name="place_name" cols="30" rows="5">juanderfulsanjuan</textarea>
                    <textarea name="place_id" cols="30" rows="5">100</textarea>
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
      </div>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d124001.07556814318!2d121.42587450566738!3d13.776846635453381!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd3b0f51ae56a7%3A0x3503f98f2afe74ee!2sSan%20Juan%2C%20Batangas!5e0!3m2!1sen!2sph!4v1680351065097!5m2!1sen!2sph" 
            width="100%" height="750" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </section>
    <?php include 'components/footer.php' ?>
    <script src="js/script.js"></script>
</body>
</html>
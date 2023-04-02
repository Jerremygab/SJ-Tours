<?php

include 'components/connect.php';


if(isset($_POST['send'])){

   $name = $_POST['fullname'];
   $name = filter_var($name, FILTER_SANITIZE_STRING);
   $email = $_POST['email'];
   $email = filter_var($email, FILTER_SANITIZE_STRING);
   $number = $_POST['number'];
   $number = filter_var($number, FILTER_SANITIZE_STRING);
   $msg = $_POST['message'];
   $msg = filter_var($msg, FILTER_SANITIZE_STRING);

   $select_message = $conn->prepare("SELECT * FROM `contact_form` WHERE fullname = ? AND email = ? AND number = ? AND message = ?");
   $select_message->execute([$name, $email, $number, $msg]);

   if($select_message->rowCount() > 0){
      $message[] = 'Already sent message!';
   }else{

      $insert_message = $conn->prepare("INSERT INTO `contact_form`( fullname, email, number, message) VALUES(?,?,?,?)");
      $insert_message->execute([ $name, $email, $number, $msg]);

      $message[] = 'Sent message successfully!';

   }

}

?>


<div class="contact_" id="contact">
         <div class="title_">Get in touch</div>
         
         <div class="contact_container column_">
            <div class="contact_content row_">
               <br><br>
               <br><br>
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
                    <input type="text" placeholder="My name is" name="fullname" id="name_input" required>
                  </div>
                  <div class="email">
                    <label for="email"></label>
                    <input type="email" placeholder="My e-mail is" name="email" id="email_input" required>
                  </div>
                  <div class="telephone">
                    <label for="name"></label>
                    <input type="text" placeholder="My number is" name="number" id="telephone_input" required>
                  </div>
                  <div class="message">
                    <label for="message"></label>
                    <textarea name="message" placeholder="I'd like to chat about" id="message_input" cols="30" rows="5" required></textarea>
                  </div>
                  <div class="submit">
                    <input type="submit" name="send" value="Send Message" id="form_button" onclick="messageSent()"/>
                    
                  </div>
                </form>
            </div>
         </div>
        <div class="embedded_map">
            <div class="title_">We're Located at</div>
            <br><br>
            <iframe src="<?= $fetch_places['embedded_map']; ?>" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" id="gmap"></iframe>
        </div>  
      </div>


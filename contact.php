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
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3876.944962128064!2d121.37187589999999!3d13.661110599999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd3afcd468b6e5%3A0xeea7fc120a879422!2sLa%20Luz%20Beach%20Resort!5e0!3m2!1sen!2sph!4v1679582685253!5m2!1sen!2sph" width="100%" height="550" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>         
        </div>  
         <div class="exp_container">
            <div class="title_">Similar Places</div>
            <br><br>
            <div class="what_to_do">
                <div class="exp_contents_">
                    <?php
                        $select_places = $conn->prepare("SELECT * FROM `weekend_gateaway` ORDER BY RAND() LIMIT 5"); 
                        $select_places->execute();
                        if($select_places->rowCount() > 0){
                        while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
                    ?> 
                    <div class="weekend_gateaway">
                        <div class="exp_img_box">
                        <a href="quickview.php?pid=<?= $fetch_places['id']; ?>">
                            <img src="img/tourist/<?= $fetch_places['img1']; ?>" alt="">
                        </a>
                        </div>
                        <div class="exp_place">
                            <b><?= $fetch_places['place_name']; ?></b>
                        </div>
                        <div class="exp_links">
                            <a href="<?= $fetch_places['fb_link']; ?>" target="_blank"><i class='bx bxl-facebook-circle icons_'></i></a>
                            <a href="<?= $fetch_places['web_link']; ?>" target="_blank"><i class='bx bx-globe icons_'></i></a>
                            <!-- <a href="<?= $fetch_places['gmail_link']; ?>" target="_blank"><i class='bx bxs-envelope icons_'></i></a> -->
                            <!-- <a href="<?= $fetch_places['phone_link']; ?>" target="_blank"><i class='bx bxs-phone icons_'></i></a> -->
                            <a href="<?= $fetch_places['map_link']; ?>" target="_blank"><i class='bx bxs-map icons_'></i></a>
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
      </div>
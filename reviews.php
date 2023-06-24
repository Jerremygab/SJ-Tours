<?php

include 'components/connect.php';
if(isset($_POST['add_review'])){
    
   $pid = $_POST['place_id'];
   $pid = filter_var($pid, FILTER_SANITIZE_STRING);
   $username = $_POST['username'];
   $username = filter_var($username, FILTER_SANITIZE_STRING);
   $text = $_POST['text'];
   $text = filter_var($text, FILTER_SANITIZE_STRING);

   $image_01 = $_FILES['img1']['name'];
   $image_01 = filter_var($image_01, FILTER_SANITIZE_STRING);
   $image_size_01 = $_FILES['img1']['size'];
   $image_tmp_name_01 = $_FILES['img1']['tmp_name'];
   $image_folder_01 = '../img/reviews/'.$image_01;

   $image_02 = $_FILES['img2']['name'];
   $image_02 = filter_var($image_02, FILTER_SANITIZE_STRING);
   $image_size_02 = $_FILES['img2']['size'];
   $image_tmp_name_02 = $_FILES['img2']['tmp_name'];
   $image_folder_02 = '../img/reviews/'.$image_02;

   $image_03 = $_FILES['img3']['name'];
   $image_03 = filter_var($image_03, FILTER_SANITIZE_STRING);
   $image_size_03 = $_FILES['img3']['size'];
   $image_tmp_name_03 = $_FILES['img3']['tmp_name'];
   $image_folder_03 = '../img/reviews/'.$image_03;

   $image_04 = $_FILES['img4']['name'];
   $image_04 = filter_var($image_03, FILTER_SANITIZE_STRING);
   $image_size_04 = $_FILES['img4']['size'];
   $image_tmp_name_04 = $_FILES['img4']['tmp_name'];
   $image_folder_04 = '../img/reviews/'.$image_04;

   $image_05 = $_FILES['img5']['name'];
   $image_05 = filter_var($image_03, FILTER_SANITIZE_STRING);
   $image_size_05 = $_FILES['img5']['size'];
   $image_tmp_name_05 = $_FILES['img5']['tmp_name'];
   $image_folder_05 = '../img/reviews/'.$image_05;

   $select_contents = $conn->prepare("SELECT * FROM `reviews` WHERE place_id = ?");
   $select_contents->execute([$pid]);

   
   $insert_contents = $conn->prepare("INSERT INTO `reviews`(place_id, username, text, img1, img2, img3, img4, img5) VALUES(?,?,?,?,?,?,?,?)");
   $insert_contents->execute([$pid, $username, $text,$image_01, $image_02, $image_03, $image_04, $image_05]);
   $message[] = 'New reviews added!';

   

};
?>

<section class="show-products">

   <div class="box-container">

   <?php
      $select_contents = $conn->prepare("SELECT * FROM `reviews`");
      $select_contents->execute();
      if($select_contents->rowCount() > 0){
         while($fetch_contents = $select_contents->fetch(PDO::FETCH_ASSOC)){ 
   ?>
   <div class="box">
      <img src="../img/tourist/<?= $fetch_contents['img1']; ?>" alt="">
      <div class="name"><?= $fetch_contents['place_name']; ?></div>
      <div class="price">₱<span><?= $fetch_contents['rate']; ?></span></div>
      <div class="details"><span><?= $fetch_contents['details']; ?></span></div>
      <div class="flex-btn">
         <a href="wg-update.php?update=<?= $fetch_contents['id']; ?>" class="option-btn">update</a>
         <a href="wg-content.php?delete=<?= $fetch_contents['id']; ?>" class="delete-btn" onclick="return confirm('delete this content?');">delete</a>
      </div>
   </div>
   <?php
         }
      }else{
         echo '<p class="empty">no contents added yet!</p>';
      }
   ?>
   
   </div>

</section>

<h1 class="tit">Add Review</h1>
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
                     <input type="submit" value="add content" class="btn" name="add_content">
                  </div>

                  <div class="d-none">
                    <textarea name="place_name" cols="30" rows="5"><?= $fetch_places['place_name']; ?></textarea>
                    <textarea name="place_id" cols="30" rows="5"><?= $fetch_places['id']; ?></textarea>
                  </div>
                </form>
            </div>



<script>
   $(function(){
    $("input[type='submit']").click(function(){
        var $fileUpload = $("input[type='file']");
        if (parseInt($fileUpload.get(0).files.length)>5){
         alert("You can only upload a maximum of 5 images");
        }
    });    
});​
</script>

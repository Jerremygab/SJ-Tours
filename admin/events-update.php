<?php

include '../components/connect.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if(!isset($admin_id)){
   header('location:admin_login.php');
}

if(isset($_POST['update'])){

   $pid = $_POST['pid'];
   $name = $_POST['place_name'];
   $name = filter_var($name, FILTER_SANITIZE_STRING);
   $location = $_POST['location'];
   $location = filter_var($location, FILTER_SANITIZE_STRING);
   $details = $_POST['details'];
   $details = filter_var($details, FILTER_SANITIZE_STRING);
   $date = $_POST['date'];
   $date = filter_var($date, FILTER_SANITIZE_STRING);

   $update_content = $conn->prepare("UPDATE `events` SET name = ?, description = ?, location = ?, date = ? WHERE id = ?");
   $update_content->execute([$name, $details,$location,$date, $pid]);

   $message[] = 'Events updated successfully!';

   $old_image_01 = $_POST['old_image_01'];
   $image_01 = $_FILES['img1']['name'];
   $image_01 = filter_var($image_01, FILTER_SANITIZE_STRING);
   $image_size_01 = $_FILES['img1']['size'];
   $image_tmp_name_01 = $_FILES['img1']['tmp_name'];
   $image_folder_01 = '../img/tourist/'.$image_01;

   if(!empty($image_01)){
      if($image_size_01 > 2000000){
         $message[] = 'image size is too large!';
      }else{
         $update_image_01 = $conn->prepare("UPDATE `events` SET img1 = ? WHERE id = ?");
         $update_image_01->execute([$image_01, $pid]);
         move_uploaded_file($image_tmp_name_01, $image_folder_01);
         unlink('../img/events/'.$old_image_01);
         $message[] = 'image 01 updated successfully!';
      }
   }

  

}

?>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>update content</title>

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <link rel="stylesheet" href="../css/admin_style.css">

</head>
<body>

<?php include '../components/admin_header.php'; ?>

<section class="update-product">

   <h1 class="heading">update content</h1>

   <?php
      $update_id = $_GET['update'];
      $select_contents = $conn->prepare("SELECT * FROM `events` WHERE id = ?");
      $select_contents->execute([$update_id]);
      if($select_contents->rowCount() > 0){
         while($fetch_contents = $select_contents->fetch(PDO::FETCH_ASSOC)){ 
   ?>
   <form action="" method="post" enctype="multipart/form-data">
      <input type="hidden" name="pid" value="<?= $fetch_contents['id']; ?>">
      <input type="hidden" name="old_image_01" value="<?= $fetch_contents['img1']; ?>">
      <div class="image-container">
         <div class="main-image">
            <img src="../img/events/<?= $fetch_contents['img1']; ?>" alt="">
         </div>
      </div>
      <span>update name</span>
      <input type="text" name="place_name" required class="box" maxlength="100" placeholder="enter content name" value="<?= $fetch_contents['name']; ?>">
      <span>update details</span>
      <textarea name="details" class="box" required cols="30" rows="10"><?= $fetch_contents['description']; ?></textarea>
      <span>update location</span>
      <input type="text" name="location" required class="box" maxlength="100" placeholder="enter location" value="<?= $fetch_contents['location']; ?>">
      <span>update Date</span>
      <input type="text" name="fb_link" required class="box" maxlength="100" placeholder="enter FB Link" value="<?= $fetch_contents['date']; ?>">
      <span>update image 01</span>
      <input type="file" name="img1" accept="image/jpg, image/jpeg, image/png, image/webp" class="box">
      <div class="flex-btn">
         <input type="submit" name="update" class="btn" value="update">
         <a href="events-content.php" class="option-btn">go back</a>
      </div>
   </form>
   
   <?php
         }
      }else{
         echo '<p class="empty">no Events found!</p>';
      }
   ?>

</section>

<script src="../js/admin_script.js"></script>
   
</body>
</html>
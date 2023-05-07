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
   $price = $_POST['rate'];
   $price = filter_var($price, FILTER_SANITIZE_STRING);
   $details = $_POST['details'];
   $details = filter_var($details, FILTER_SANITIZE_STRING);
   $fb_link = $_POST['fb_link'];
   $fb_link = filter_var($fb_link, FILTER_SANITIZE_STRING);
   $ig_link = $_POST['ig_link'];
   $ig_link = filter_var($ig_link, FILTER_SANITIZE_STRING);
   $web_link = $_POST['web_link'];
   $web_link = filter_var($web_link, FILTER_SANITIZE_STRING);
   $gmail_link1 = $_POST['gmail_link1'];
   $gmail_link1 = filter_var($gmail_link1, FILTER_SANITIZE_STRING);
   $gmail_link2 = $_POST['gmail_link2'];
   $gmail_link2 = filter_var($gmail_link2, FILTER_SANITIZE_STRING);
   $phone_link1 = $_POST['phone_link1'];
   $phone_link1 = filter_var($phone_link1, FILTER_SANITIZE_STRING);
   $phone_link2 = $_POST['phone_link2'];
   $phone_link2 = filter_var($phone_link2, FILTER_SANITIZE_STRING);
   $map_link = $_POST['map_link'];
   $map_link = filter_var($map_link, FILTER_SANITIZE_STRING);
   $embedded_map = $_POST['embedded_map'];
   $embedded_map = filter_var($embedded_map, FILTER_SANITIZE_STRING);
   $property_amenities = $_POST['property_amenities'];
   $property_amenities = filter_var($property_amenities, FILTER_SANITIZE_STRING);
   $room_features = $_POST['room_features'];
   $room_features = filter_var($room_features, FILTER_SANITIZE_STRING);
   $room_types = $_POST['room_types'];
   $room_types = filter_var($room_types, FILTER_SANITIZE_STRING);

   $update_content = $conn->prepare("UPDATE `weekend_gateaway` SET place_name = ?, rate = ?, details = ?, location = ?, fb_link = ?, ig_link = ?, 
                                                                   web_link = ?, gmail_link1 = ?, gmail_link2 = ?, phone_link1 = ?, phone_link2 = ?, map_link = ?, 
                                                                   embedded_map = ?, property_amenities = ?, room_features = ?, room_types = ?
                                                                   WHERE id = ?");
   $update_content->execute([$name, $price, $details,$location,$fb_link,$ig_link,$web_link,$gmail_link1,$gmail_link2,$phone_link2, $map_link,$embedded_map,$property_amenities, $room_features,$room_types, $pid]);

   $message[] = 'Content updated successfully!';

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
         $update_image_01 = $conn->prepare("UPDATE `weekend_gateaway` SET img1 = ? WHERE id = ?");
         $update_image_01->execute([$image_01, $pid]);
         move_uploaded_file($image_tmp_name_01, $image_folder_01);
         unlink('../img/tourist/'.$old_image_01);
         $message[] = 'image 01 updated successfully!';
      }
   }

   $old_image_02 = $_POST['old_image_02'];
   $image_02 = $_FILES['img2']['name'];
   $image_02 = filter_var($image_02, FILTER_SANITIZE_STRING);
   $image_size_02 = $_FILES['img2']['size'];
   $image_tmp_name_02 = $_FILES['img2']['tmp_name'];
   $image_folder_02 = '../img/tourist/'.$image_02;

   if(!empty($image_02)){
      if($image_size_02 > 2000000){
         $message[] = 'image size is too large!';
      }else{
         $update_image_02 = $conn->prepare("UPDATE `weekend_gateaway` SET img2 = ? WHERE id = ?");
         $update_image_02->execute([$image_02, $pid]);
         move_uploaded_file($image_tmp_name_02, $image_folder_02);
         unlink('../img/tourist/'.$old_image_02);
         $message[] = 'image 02 updated successfully!';
      }
   }

   $old_image_03 = $_POST['old_image_03'];
   $image_03 = $_FILES['img3']['name'];
   $image_03 = filter_var($image_03, FILTER_SANITIZE_STRING);
   $image_size_03 = $_FILES['img3']['size'];
   $image_tmp_name_03 = $_FILES['img3']['tmp_name'];
   $image_folder_03 = '../img/tourist/'.$image_03;

   if(!empty($image_03)){
      if($image_size_03 > 2000000){
         $message[] = 'image size is too large!';
      }else{
         $update_image_03 = $conn->prepare("UPDATE `weekend_gateaway` SET img3 = ? WHERE id = ?");
         $update_image_03->execute([$image_03, $pid]);
         move_uploaded_file($image_tmp_name_03, $image_folder_03);
         unlink('../img/tourist/'.$old_image_03);
         $message[] = 'image 03 updated successfully!';
      }
   }

   $old_image_03 = $_POST['old_image_03'];
   $image_03 = $_FILES['img4']['name'];
   $image_03 = filter_var($image_03, FILTER_SANITIZE_STRING);
   $image_size_03 = $_FILES['img4']['size'];
   $image_tmp_name_03 = $_FILES['img4']['tmp_name'];
   $image_folder_03 = '../img/tourist/'.$image_03;

   if(!empty($image_03)){
      if($image_size_03 > 2000000){
         $message[] = 'image size is too large!';
      }else{
         $update_image_03 = $conn->prepare("UPDATE `weekend_gateaway` SET img4 = ? WHERE id = ?");
         $update_image_03->execute([$image_03, $pid]);
         move_uploaded_file($image_tmp_name_03, $image_folder_03);
         unlink('../img/tourist/'.$old_image_03);
         $message[] = 'image 03 updated successfully!';
      }
   }

   $old_image_03 = $_POST['old_image_03'];
   $image_03 = $_FILES['img5']['name'];
   $image_03 = filter_var($image_03, FILTER_SANITIZE_STRING);
   $image_size_03 = $_FILES['img5']['size'];
   $image_tmp_name_03 = $_FILES['img5']['tmp_name'];
   $image_folder_03 = '../img/tourist/'.$image_03;

   if(!empty($image_03)){
      if($image_size_03 > 2000000){
         $message[] = 'image size is too large!';
      }else{
         $update_image_03 = $conn->prepare("UPDATE `weekend_gateaway` SET img5 = ? WHERE id = ?");
         $update_image_03->execute([$image_03, $pid]);
         move_uploaded_file($image_tmp_name_03, $image_folder_03);
         unlink('../img/tourist/'.$old_image_03);
         $message[] = 'image 03 updated successfully!';
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
      $select_contents = $conn->prepare("SELECT * FROM `weekend_gateaway` WHERE id = ?");
      $select_contents->execute([$update_id]);
      if($select_contents->rowCount() > 0){
         while($fetch_contents = $select_contents->fetch(PDO::FETCH_ASSOC)){ 
   ?>
   <form action="" method="post" enctype="multipart/form-data">
      <input type="hidden" name="pid" value="<?= $fetch_contents['id']; ?>">
      <input type="hidden" name="old_image_01" value="<?= $fetch_contents['img1']; ?>">
      <input type="hidden" name="old_image_02" value="<?= $fetch_contents['img2']; ?>">
      <input type="hidden" name="old_image_03" value="<?= $fetch_contents['img3']; ?>">
      <div class="image-container">
         <div class="main-image">
            <img src="../img/tourist/<?= $fetch_contents['img1']; ?>" alt="">
         </div>
         <div class="sub-image">
            <img src="../img/tourist/<?= $fetch_contents['img1']; ?>" alt="">
            <img src="../img/tourist/<?= $fetch_contents['img2']; ?>" alt="">
            <img src="../img/tourist/<?= $fetch_contents['img3']; ?>" alt="">
            <img src="../img/tourist/<?= $fetch_contents['img4']; ?>" alt="">
            <img src="../img/tourist/<?= $fetch_contents['img5']; ?>" alt="">
         </div>
      </div>
      <span>update name</span>
      <input type="text" name="place_name" required class="box" maxlength="100" placeholder="enter content name" value="<?= $fetch_contents['place_name']; ?>">
      <span>update price</span>
      <input type="number" name="rate" required class="box" min="0" max="9999999999" placeholder="enter price" onkeypress="if(this.value.length == 10) return false;" value="<?= $fetch_contents['rate']; ?>">
      <span>update details</span>
      <textarea name="details" class="box" required cols="30" rows="10"><?= $fetch_contents['details']; ?></textarea>
      <span>update location</span>
      <input type="text" name="location" required class="box" maxlength="100" placeholder="enter location" value="<?= $fetch_contents['location']; ?>">
      <span>update FB Link</span>
      <input type="text" name="fb_link" required class="box" maxlength="100" placeholder="enter FB Link" value="<?= $fetch_contents['fb_link']; ?>">
      <span>update WEB Link</span>
      <input type="text" name="web_link"  class="box" maxlength="100" placeholder="enter WEB Link" value="<?= $fetch_contents['ig_link']; ?>">
      <span>update IG Link</span>
      <input type="text" name="ig_link"  class="box" maxlength="100" placeholder="enter IG Link" value="<?= $fetch_contents['web_link']; ?>">
      <span>update Gmail 1</span>
      <input type="text" name="gmail_link1"  class="box" maxlength="100" placeholder="enter Gmail 1" value="<?= $fetch_contents['gmail_link1']; ?>">
      <span>update Gmail 2</span>
      <input type="text" name="gmail_link2"  class="box" maxlength="100" placeholder="enter Gmail 2" value="<?= $fetch_contents['gmail_link2']; ?>">
      <span>update Phone 1</span>
      <input type="text" name="phone_link1"  class="box" maxlength="100" placeholder="enter Phone 1" value="<?= $fetch_contents['phone_link1']; ?>">
      <span>update Phone 2</span>
      <input type="text" name="phone_link2"  class="box" maxlength="100" placeholder="enter Phone 2" value="<?= $fetch_contents['phone_link2']; ?>">
      <span>update Map link</span>
      <input type="text" name="map_link" required class="box" maxlength="100" placeholder="enter Map Link" value="<?= $fetch_contents['map_link']; ?>">
      <span>update Embedded Map</span>
      <input type="text" name="embedded_map" required class="box" maxlength="100" placeholder="enter Embedded Map" value="<?= $fetch_contents['embedded_map']; ?>">
      <span>update property Amenities</span>
      <input type="text" name="property_amenities"  class="box" maxlength="100" placeholder="enter Property Amenities" value="<?= $fetch_contents['property_amenities']; ?>">
      <span>update Room_types</span>
      <input type="text" name="room_types"  class="box" maxlength="100" placeholder="enter Room Features" value="<?= $fetch_contents['room_types']; ?>">
      <span>update room features</span>
      <input type="text" name="room_features"  class="box" maxlength="100" placeholder="enter Room Types" value="<?= $fetch_contents['room_features']; ?>">
      <span>update image 01</span>
      <input type="file" name="img1" accept="image/jpg, image/jpeg, image/png, image/webp" class="box">
      <span>update image 02</span>
      <input type="file" name="img2" accept="image/jpg, image/jpeg, image/png, image/webp" class="box">
      <span>update image 03</span>
      <input type="file" name="img3" accept="image/jpg, image/jpeg, image/png, image/webp" class="box">
      <span>update image 04</span>
      <input type="file" name="img4" accept="image/jpg, image/jpeg, image/png, image/webp" class="box">
      <span>update image 05</span>
      <input type="file" name="img5" accept="image/jpg, image/jpeg, image/png, image/webp" class="box">
      <div class="flex-btn">
         <input type="submit" name="update" class="btn" value="update">
         <a href="wg-content.php" class="option-btn">go back</a>
      </div>
   </form>
   
   <?php
         }
      }else{
         echo '<p class="empty">no Contents found!</p>';
      }
   ?>

</section>

<script src="../js/admin_script.js"></script>
   
</body>
</html>
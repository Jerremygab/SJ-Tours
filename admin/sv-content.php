<?php

include '../components/connect.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if(!isset($admin_id)){
   header('location:admin_login.php');
};

if(isset($_POST['add_content'])){
    
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

   $image_01 = $_FILES['img1']['name'];
   $image_01 = filter_var($image_01, FILTER_SANITIZE_STRING);
   $image_size_01 = $_FILES['img1']['size'];
   $image_tmp_name_01 = $_FILES['img1']['tmp_name'];
   $image_folder_01 = '../img/tourist/'.$image_01;

   $image_02 = $_FILES['img2']['name'];
   $image_02 = filter_var($image_02, FILTER_SANITIZE_STRING);
   $image_size_02 = $_FILES['img2']['size'];
   $image_tmp_name_02 = $_FILES['img2']['tmp_name'];
   $image_folder_02 = '../img/tourist/'.$image_02;

   $image_03 = $_FILES['img3']['name'];
   $image_03 = filter_var($image_03, FILTER_SANITIZE_STRING);
   $image_size_03 = $_FILES['img3']['size'];
   $image_tmp_name_03 = $_FILES['img3']['tmp_name'];
   $image_folder_03 = '../img/tourist/'.$image_03;

   $image_04 = $_FILES['img4']['name'];
   $image_04 = filter_var($image_03, FILTER_SANITIZE_STRING);
   $image_size_04 = $_FILES['img4']['size'];
   $image_tmp_name_04 = $_FILES['img4']['tmp_name'];
   $image_folder_04 = '../img/tourist/'.$image_04;

   $image_05 = $_FILES['img5']['name'];
   $image_05 = filter_var($image_03, FILTER_SANITIZE_STRING);
   $image_size_05 = $_FILES['img5']['size'];
   $image_tmp_name_05 = $_FILES['img5']['tmp_name'];
   $image_folder_05 = '../img/tourist/'.$image_05;

   $select_contents = $conn->prepare("SELECT * FROM `souvenirs` WHERE place_name = ?");
   $select_contents->execute([$name]);

   if($select_contents->rowCount() > 0){
      $message[] = 'content name already exist!';
   }else{

      $insert_contents = $conn->prepare("INSERT INTO `souvenirs`(place_name, location, details, rate, fb_link, ig_link, web_link, gmail_link1, gmail_link2, phone_link1, phone_link2, map_link, embedded_map, property_amenities, room_features, room_types, img1, img2, img3, img4, img5) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
      $insert_contents->execute([$name, $location, $details, $price, $fb_link, $ig_link, $web_link, $gmail_link1, $gmail_link2, $phone_link1, $phone_link2, $map_link, $embedded_map, $property_amenities, $room_features, $room_types, $image_01, $image_02, $image_03, $image_04, $image_05]);
      $message[] = 'New Contents added!';
      /* if($insert_contents){
         if($image_size_01 > 2000000 OR $image_size_02 > 2000000 OR $image_size_03 > 2000000 OR $image_size_04 > 2000000 OR $image_size_05 > 2000000){
            $message[] = 'Image size is too large!';
         }else{
            move_uploaded_file($image_tmp_name_01, $image_folder_01);
            move_uploaded_file($image_tmp_name_02, $image_folder_02);
            move_uploaded_file($image_tmp_name_03, $image_folder_03);
            $message[] = 'New Contents added!';
         }

      } */

   }  

};

if(isset($_GET['delete'])){

   $delete_id = $_GET['delete'];
   $delete_content_image = $conn->prepare("SELECT * FROM `souvenirs` WHERE id = ?");
   $delete_content_image->execute([$delete_id]);
   $fetch_delete_image = $delete_content_image->fetch(PDO::FETCH_ASSOC);
   unlink('../img/tourist/'.$fetch_delete_image['img1']);
   unlink('../img/tourist/'.$fetch_delete_image['img2']);
   unlink('../img/tourist/'.$fetch_delete_image['img3']);
   unlink('../img/tourist/'.$fetch_delete_image['img4']);
   unlink('../img/tourist/'.$fetch_delete_image['img5']);
   $delete_content = $conn->prepare("DELETE FROM `souvenirs` WHERE id = ?");
   $delete_content->execute([$delete_id]);
   header("Location: /sjtours");
}


?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Contents</title>

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <link rel="stylesheet" href="../css/admin_style.css">

</head>
<body>

<?php include '../components/admin_header.php'; ?>

<section class="add-products">

   <h1 class="heading">Add Content</h1>

   <form action="" method="post" enctype="multipart/form-data">
      <div class="flex">
         <div class="inputBox">
            <span>Place name  </span>
            <input type="text" class="box" required maxlength="100" placeholder="Enter place name" name="place_name">
         </div>
         <div class="inputBox">
            <span>Location  </span>
            <input type="text" class="box" required maxlength="500" placeholder="Enter Location" name="location">
         </div>
         <div class="inputBox">
            <span>Lowest Price  </span>
            <input type="number" min="0" class="box" required max="9999999999" placeholder="Enter lowest price" onkeypress="if(this.value.length == 10) return false;" name="rate">
         </div>
         <div class="inputBox">
            <span>Description  </span>
            <textarea placeholder="Enter Description" class="box" required maxlength="500" cols="30" rows="10" name="details"></textarea>
         </div>
         <div class="inputBox">
            <span>FB Link  </span>
            <input type="text" class="box" required maxlength="500" placeholder="Enter FB Link" name="fb_link">
         </div>
         <div class="inputBox">
            <span>IG Link  </span>
            <input type="text" class="box"  maxlength="500" placeholder="Enter IG Link" name="ig_link">
         </div>
         <div class="inputBox">
            <span>WEB Link  </span>
            <input type="text" class="box"  maxlength="500" placeholder="Enter WEB Link" name="web_link">
         </div>
         <div class="inputBox">
            <span>Gmail 1 </span>
            <input type="text" class="box" required maxlength="500" placeholder="Enter Gmail 1" name="gmail_link1">
         </div>
         <div class="inputBox">
            <span>Gmail 2  </span>
            <input type="text" class="box"  maxlength="500" placeholder="Enter Gmail 2" name="gmail_link2">
         </div>
         <div class="inputBox">
            <span>Phone Number 1  </span>
            <input type="text" class="box" required maxlength="12" placeholder="Enter Phone Number 1" name="phone_link1">
         </div>
         <div class="inputBox">
            <span>Phone Number 2  </span>
            <input type="text" class="box"  maxlength="12" placeholder="Enter Phone Number 2" name="phone_link2">
         </div>
         <div class="inputBox">
            <span>Map Link  </span>
            <input type="text" class="box" required maxlength="500" placeholder="Enter Map Link" name="map_link">
         </div>
         <div class="inputBox">
            <span>Embedded Map Link  </span>
            <input type="text" class="box" required maxlength="1000" placeholder="Enter Embedded Map Link" name="embedded_map">
         </div>
         <!-- <div class="inputBox">
            <span>Property Amenities  </span>
            <input type="text" class="box" required maxlength="1000" placeholder="Enter Embedded Map Link" name="property_amenities">
         </div>
         <div class="inputBox">
            <span>Room Features  </span>
            <input type="text" class="box" required maxlength="1000" placeholder="Enter Embedded Map Link" name="room_features">
         </div>
         <div class="inputBox">
            <span>Room Types  </span>
            <input type="text" class="box" required maxlength="1000" placeholder="Enter Embedded Map Link" name="room_types">
         </div> -->
        <div class="inputBox">
            <span>Image 01  </span>
            <input type="file" name="img1" accept="image/jpg, image/jpeg, image/png, image/webp" class="box" required>
        </div>
        <div class="inputBox">
            <span>Image 02  </span>
            <input type="file" name="img2" accept="image/jpg, image/jpeg, image/png, image/webp" class="box" required>
        </div>
        <div class="inputBox">
            <span>Image 03  </span>
            <input type="file" name="img3" accept="image/jpg, image/jpeg, image/png, image/webp" class="box" required>
        </div>
        <div class="inputBox">
            <span>Image 04  </span>
            <input type="file" name="img4" accept="image/jpg, image/jpeg, image/png, image/webp" class="box" required>
        </div>
        <div class="inputBox">
            <span>Image 05 </span>
            <input type="file" name="img5" accept="image/jpg, image/jpeg, image/png, image/webp" class="box" required>
        </div>
         
      </div>
      
      <input type="submit" value="add content" class="btn" name="add_content">
   </form>

</section>

<section class="show-products">

   <h1 class="heading">contents added</h1>

   <div class="box-container">

   <?php
      $select_contents = $conn->prepare("SELECT * FROM `souvenirs`");
      $select_contents->execute();
      if($select_contents->rowCount() > 0){
         while($fetch_contents = $select_contents->fetch(PDO::FETCH_ASSOC)){ 
   ?>
   <div class="box">
      <img src="../img/tourist/<?= $fetch_contents['img1']; ?>" alt="">
      <div class="name"><?= $fetch_contents['place_name']; ?></div>
      <div class="details"><span><?= $fetch_contents['details']; ?></span></div>
      <div class="flex-btn">
         <a href="sv-content.php?update=<?= $fetch_contents['id']; ?>" class="option-btn">update</a>
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

<script src="../js/admin_script.js"></script>
   
</body>
</html>
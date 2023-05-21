<?php

include '../components/connect.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if(!isset($admin_id)){
   header('location:admin_login.php');
};

if(isset($_POST['add_content'])){
    
   $name = $_POST['name'];
   $name = filter_var($name, FILTER_SANITIZE_STRING);
   $location = $_POST['location'];
   $location = filter_var($location, FILTER_SANITIZE_STRING);
   $date = $_POST['date'];
   $date = filter_var($date, FILTER_SANITIZE_STRING);
   $description = $_POST['description'];
   $description = filter_var($description, FILTER_SANITIZE_STRING);

   $image_01 = $_FILES['img1']['name'];
   $image_01 = filter_var($image_01, FILTER_SANITIZE_STRING);
   $image_size_01 = $_FILES['img1']['size'];
   $image_tmp_name_01 = $_FILES['img1']['tmp_name'];
   $image_folder_01 = '../img/tourist/'.$image_01;


   $select_contents = $conn->prepare("SELECT * FROM `events` WHERE name = ?");
   $select_contents->execute([$name]);

   if($select_contents->rowCount() > 0){
      $message[] = 'Event name already exist!';
   }else{

      $insert_contents = $conn->prepare("INSERT INTO `events`(name, location, description, date, img1) VALUES(?,?,?,?,?)");
      $insert_contents->execute([$name, $location, $description, $date, $image_01]);
      $message[] = 'New events added!';

   }  

};

if(isset($_GET['delete'])){

   $delete_id = $_GET['delete'];
   $delete_content_image = $conn->prepare("SELECT * FROM `events` WHERE id = ?");
   $delete_content_image->execute([$delete_id]);
   $fetch_delete_image = $delete_content_image->fetch(PDO::FETCH_ASSOC);
   unlink('../img/tourist/'.$fetch_delete_image['img1']);
   $delete_content = $conn->prepare("DELETE FROM `events` WHERE id = ?");
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

   <h1 class="heading">Add Events</h1>

   <form action="" method="post" enctype="multipart/form-data">
      <div class="flex">
         <div class="inputBox">
            <span>Events name  </span>
            <input type="text" class="box" required maxlength="100" placeholder="Enter place name" name="place_name">
         </div>
         <div class="inputBox">
            <span>Location  </span>
            <input type="text" class="box" required maxlength="500" placeholder="Enter Location" name="location">
         </div>
         <div class="inputBox">
            <span>Description  </span>
            <textarea placeholder="Enter Description" class="box" required maxlength="500" cols="30" rows="10" name="description"></textarea>
         </div>
         <div class="inputBox">
            <span>Date  </span>
            <input type="text" class="box" required maxlength="500" placeholder="Enter FB Link" name="fb_link">
         </div>
        <div class="inputBox">
            <span>Image 01  </span>
            <input type="file" name="img1" accept="image/jpg, image/jpeg, image/png, image/webp" class="box" required>
        </div>
         
      </div>
      
      <input type="submit" value="add content" class="btn" name="add_content">
   </form>

</section>

<section class="show-products">

   <h1 class="heading">contents added</h1>

   <div class="box-container">

   <?php
      $select_contents = $conn->prepare("SELECT * FROM `events`");
      $select_contents->execute();
      if($select_contents->rowCount() > 0){
         while($fetch_contents = $select_contents->fetch(PDO::FETCH_ASSOC)){ 
   ?>
   <div class="box">
      <img src="../img/events/<?= $fetch_contents['img1']; ?>" alt="">
      <div class="name"><?= $fetch_contents['name']; ?></div>
      <div class="description"><span><?= $fetch_contents['location']; ?></span></div>
      <div class="description"><span><?= $fetch_contents['date']; ?></span></div>
      <div class="flex-btn">
         <a href="events-update.php?update=<?= $fetch_contents['id']; ?>" class="option-btn">update</a>
         <a href="events-content.php?delete=<?= $fetch_contents['id']; ?>" class="delete-btn" onclick="return confirm('delete this content?');">delete</a>
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
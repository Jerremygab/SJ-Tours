<?php

include '../components/connect.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if(!isset($admin_id)){
   header('location:admin_login.php');
};

if(isset($_GET['delete'])){
   $delete_id = $_GET['delete'];
   $delete_ratings = $conn->prepare("DELETE FROM `reviews` WHERE id = ?");
   $delete_ratings->execute([$delete_id]);
   header('location:experience.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Experiences</title>

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <link rel="stylesheet" href="../css/admin_style.css">

</head>
<body>

<?php include '../components/admin_header.php'; ?>

<section class="dashboard">

<h1 class="heading">Experiences</h1>

<div class="box-container">

   <?php
      $select_ratings = $conn->prepare("SELECT * FROM `reviews`");
      $select_ratings->execute();
      if($select_ratings->rowCount() > 0){
         while($fetch_ratings = $select_ratings->fetch(PDO::FETCH_ASSOC)){
   ?>
   <div class="box">
   
      <p><b><?= $fetch_ratings['place_name']; ?></b></p>
      <p> Date : <span><?= $fetch_ratings['date']; ?></span></p>
      <p> Fullname : <span><?= $fetch_ratings['fullname']; ?></span></p>
      <p> Message : <span><?= $fetch_ratings['message']; ?></span></p>
      <p> Images : </p>
      <img src="../img/reviews/<?= $fetch_places['image1']; ?>" alt="asd">
      <img src="../img/reviews/<?= $fetch_places['image2']; ?>" alt="ds">
      <img src="../img/reviews/<?= $fetch_places['image3']; ?>" alt="asdd">
      <a href="experience.php?delete=<?= $fetch_ratings['id']; ?>" onclick="return confirm('delete this ratings?');" class="delete-btn">delete</a>
   </div>
   <?php
         }
      }else{
         echo '<p class="empty">No experience shared</p>';
      }
   ?>

</div>

</section>

<script src="../js/admin_script.js"></script>
   
</body>
</html>
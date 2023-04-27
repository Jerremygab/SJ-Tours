<?php

include '../components/connect.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if(!isset($admin_id)){
   header('location:admin_login.php');
}

?>


<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Dashboard</title>

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <link rel="stylesheet" href="../css/admin_style.css">

</head>
<body>

<?php include '../components/admin_header.php'; ?>

<section class="dashboard">
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
   <h1 class="heading">ADMIN PANEL</h1>
      <br>
      <br>
      <br>
   <div class="box-container">
               <?php
                  $select_places = $conn->prepare("SELECT * FROM `admins`"); 
                  $select_places->execute();
                  if($select_places->rowCount() > 0){
                  while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
               ?> 
      <div class="box">
         <h3>Welcome <?= $fetch_places['name']; ?> </h3>
         <a href="update_profile.php" class="btn">Update profile</a>
      </div>

      <div class="box">
         <h3>Admin users</h3>
         <a href="admin_accounts.php" class="btn">See admins</a>
      </div>

      <div class="box">
         <h3>messages</h3>
         <a href="messages.php" class="btn">See messages</a>
      </div>

      <div class="box">
         <h3>all Contents</h3>
         <a href="contents.php" class="btn">See Contents</a>
      </div>
               <?php
                    }
                    }else{
                        echo '<p class="empty">No places found!</p>';
                    }
               ?>
   </div>

</section>
<script src="../js/admin_script.js"></script>
   
</body>
</html>
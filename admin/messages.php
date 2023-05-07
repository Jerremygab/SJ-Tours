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

      <div class="box">
         <h3>Page Messages</h3>
         <a href="page-messages.php" class="btn">See all</a>
      </div>

      <div class="box">
         <h3>Content Messages</h3>
         <a href="content-messages.php" class="btn">See all</a>
      </div>


   </div>

</section>
<script src="../js/admin_script.js"></script>
   
</body>
</html>
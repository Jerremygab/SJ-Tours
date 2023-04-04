<?php

include '../components/connect.php';

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="../css/admin.css">
    
</head>
<body>
<i class='bx bx-key icons_' onclick="openModal()"></i>
    <section class="login_" id="login">
     
        <div class="login_container">
        <i class='bx bx-x icons_' onclick="exitModal()"></i>
            <div></div>
            <div class="login_content">
                <i class='bx bx-key icons_'></i>
                <form action="" method="post">
                    <label for="username">Username</label>
                    <input type="text" class="textbox" name="username" required id='username'>
                    <label for="username">Password</label>
                    <input type="password" class="textbox" name="password" minlength="4" required id='password'>
                    <input type="submit" value="Login" id="loginBtn">
                </form>
            </div>
        </div>
    </section>
</body>
</html>
<script>
    
    function loginBtn(){
    const username = document.querySelector('#username').value;
    const password = document.querySelector('#password').value;

    let user = 'admin';
    let pass = '1234';
    
    if (username == user && password == pass){
        window.location.href = "./dashboard.php";
        window.alert('Welcome back Admin');
        return false;
    }else{
        window.alert('Invalid Username and Password');
    }

    }

    function openModal(){
        document.getElementById('login').style.display = "block";
    }
    function exitModal(){
        document.getElementById('login').style.display = "none";
    }

</script>
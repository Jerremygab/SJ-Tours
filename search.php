<?php

include 'components/connect.php'

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

        <header id="header">
            <?php include 'components/header.php'; ?>
        </header>
            <br><br>
            <br><br>
            <br><br>
        <section class="search section" id="search">
            <div class="search_container container">
                <div class="search_content">
                    <form action="">
                        <label for="search"></label>
                        <input type="text">
                    </form>
                </div>
            </div>
        </section>
</body>
</html>
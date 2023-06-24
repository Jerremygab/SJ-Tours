<?php

include 'components/connect.php';

$sql_stmt = "SELECT place_name FROM weekend_gateaway;";
$weekend_gateway_places = $conn->prepare($sql_stmt);
$weekend_gateway_places->execute();
// if
$places_names = $weekend_gateway_places->fetchAll(PDO::FETCH_DEFAULT);
//else reload or 


/* $contact_forms = [
    Acuatico Beach Resort => [
        [name => 'Jerremy', id=> 5],
        [name => 'jhonas', id=> 4]
    ]
] */

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sample</title>
</head>
<body>
    <?php 
        $sqlStmt = "SELECT 
            weekend_gateaway.id,weekend_gateaway.place_name, contact_form.id ,contact_form.fullname 
            FROM 
                weekend_gateaway 
            INNER JOIN contact_form
                ON contact_form.place_id = weekend_gateaway.id 
            ORDER BY contact_form.place_id;";
        
        $select_places = $conn->prepare($sqlStmt); 
        $select_places->execute(); 
        $weekend_gateway = [];
    ?>
    <table>
        <tr>
        <?php foreach($places_names as $places_name): ?>
            <th style="border: 1px solid"><?= $places_name[0] ?? 'unknown' ?></th>
        <?php endforeach ?>
        </tr>
        <?php 
            if($select_places->rowCount() > 0):
                while( $fetch_place = $select_places->fetch(PDO::FETCH_ASSOC)):
        ?>
            <?php if(''):?>
                <tr>
                    <td>1</td>
                    <td>2</td>
                </tr>
            
            <?php endif ?>
        <?php 
                endwhile;
            endif;
        ?>
    </table>
</body>
</html>

places_name = ( 
    [0] => Array ( [place_name] => Acuatico Beach Resort [0] => Acuatico Beach Resort ) 
    [1] => Array ( [place_name] => Acuaverde Beach Resort and Hotel [0] => Acuaverde Beach Resort and Hotel ) 
    [2] => Array ( [place_name] => La Luz Beach Resort [0] => La Luz Beach Resort ) [3] => Array ( [place_name] => Sabangan Beach Resort [0] => Sabangan Beach Resort ) [4] => Array ( [place_name] => Virgin Beach Resort [0] => Virgin Beach Resort ) )

places_name = [
        {places_name: Acuatico Beach Resort, 0: Acuatico Beach Resort}
    
    ]
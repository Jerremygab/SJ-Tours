<?php
    include 'components/connect.php';
    
    if(isset($_POST["sort"])){
        $sortBy = $_POST["sort"];
        $sql = '';
        if ($sortBy == "mostViewed"){
            $sql = "SELECT * FROM `weekend_gateaway` ORDER BY views DESC";
        }
        else if ($sortBy == "lowestPrice"){
            $sql = "SELECT * FROM `weekend_gateaway` ORDER BY rate ASC";
        }
        $select_places = $conn->prepare($sql); 
        $select_places->execute();
        $data = [];
        if($select_places->rowCount() > 0){
            while($fetch_places = $select_places->fetch(PDO::FETCH_ASSOC)){
                array_push($data, $fetch_places);
            }
        }
        echo json_encode($data);
    }
?>
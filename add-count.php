<?php 
    if($_SERVER['REQUEST_METHOD'] == 'GET'){
        header("Location: /sjtours");
    }
    include 'components/connect.php';
    
    if (isset($_POST['id'])){
        $tbl_name = $_POST['tbl'];
        $id = $_POST['id'];

        $sql_stmt_select = "SELECT views FROM $tbl_name WHERE id = '$id'";
        $get_view = $conn->prepare($sql_stmt_select);
        $get_view->execute();
        $prev_view = $get_view->fetch(PDO::FETCH_ASSOC)['views'];
        
        $sql_stmt_update = "UPDATE $tbl_name SET views = ? WHERE id = ?;";

        $update_view = $conn->prepare($sql_stmt_update);
        $update_view->execute([$prev_view + 1, $id]);
        echo $prev_view + 1;
    }
    
    // echo json_encode(['newid' => 2]);

?>
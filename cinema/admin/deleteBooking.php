<?php 
    $id = $_GET['id'];
    $link = mysqli_connect("localhost:3306", "fpmoz102019", "csdigital2019", "fpmoz102019");

    $sql = "DELETE FROM bookingtable WHERE bookingID = $id"; 

    if ($link->query($sql) === TRUE) {
        header('Location: admin.php');
        exit;
    } else {
        echo "Error deleting record: " . $link->error;
    }
?>
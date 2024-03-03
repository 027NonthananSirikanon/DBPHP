<?php
    session_start();
    include 'connectDB.php';
    if(isset($_SESSION['username'])){
        $username = $_SESSION['username'];
    }
    $Username = $_POST['Username'];
    $UserLastName = $_POST['UserLastName'];
    $Address= $_POST['address'];
    
    $sql = "update users set UserFirstName = '{$Username}', UserLastName = '{$UserLastName}', UserAddress = '{$Address}' where UserEmail = '{$username}'";
    $result=mysqli_query($con, $sql);
    
    if($result){
        header("location:profile.php");
    }else{
        echo "Error";
    }

?>

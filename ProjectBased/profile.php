<?php 
    session_start();
    include 'connectDB.php';
    if(isset($_SESSION['username'])){
        $username = $_SESSION['username'];
        
    
        $sql = "select * from users where UserEmail = '".$username . "' and UserPassword= '".   $password ."'"; 
    
        $result = $con->query($sql);
       
        $count_row = mysqli_num_rows($result);
    
        if($count_row == 1){
            // echo "found"
            $rs = $result->fetch_assoc();
            // echo $rs['UserFirstName'] ."<br>";
            // echo $rs['UserLastName'] ."<br>";
            // echo $rs['UserAddress'] ."<br>";
            // echo $rs['pic'] ."<br>";
    }
}
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Profile</title>
    <style>
        img{
         width: 200px;
         height: 300px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row mt-4">
            <div class="col-lg-4">
            <img src="image/<?php echo $rs['pic']; ?>" class="img-fluid" alt="..." >
            </div>
            <div class="col-lg-8">
                <h2>Welcome : <?php echo $username; ?> </h2>
                <p>Name:<?php echo $rs['UserFirstName']."".$rs['UserLastName']; ?> </p>
                <p>Address:<?php echo $rs['UserAddress']; ?></p>
    <div class="d-grid gap-2 d-md-block">
     <a href="edituser.php"class="btn btn-primary" type="button">Editprofile</a>
     <a href="logout.php" class="btn btn-primary" type="button">Logout</a>
    </div>
            </div>
        </div>
    </div>
</body>
</html>
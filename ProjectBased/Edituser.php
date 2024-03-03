<?php 
    session_start();
    include 'connectDB.php';
    
    if (isset($_SESSION['username'])) {
       $username = $_SESSION['username'];
    
       $sql = "select * from users where UserEmail= '{$username}'";
       $result = $con->query($sql);
       $count_row = mysqli_num_rows($result);
    
       if ($count_row == 1) {
           $rs = $result->fetch_assoc();
       }
    
       // ปรับปรุงโค้ดส่วนที่ดำเนินการ update user
       if (isset($_POST['Username'], $_POST['UserLastName'], $_POST['address'])) {
           $Username = $_POST['Username'];
           $UserLastName = $_POST['UserLastName'];
           $Address = $_POST['address'];
    
           // ใช้ prepared statements เพื่อป้องกัน SQL injection
           $stmt = $con->prepare("update users set UserFirstName = ?, UserLastName = ?, UserAddress = ? where UserEmail = ?");
           $stmt->bind_param("ssss", $Username, $UserLastName, $Address, $username);
           $result = $stmt->execute();
    
           if ($result) {
               // อัปเดตสำเร็จ
               header("location:profile.php");
           } else {
               // อัปเดตล้มเหลว แสดงข้อผิดพลาด
               die("Error updating user: " . mysqli_error($con));
           }
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
    <title>Document</title>
</head>
<body>
    
    <div class="container card mt-5 pt-2 pb-2">
        <div class="col card-body">
        <h1>นาย นนทนันท์ ศิริกานนท์ 6540011027 IT</h1>
        <h1>Edit profile : Lisa</h1>
    <form action="" method="post">
    <div class="mt-5">
    <div class="form-floating mb-3">
    <input type="text" class="form-control" id="floatingInput" placeholder="name" name="Username"  value="<?php echo $rs['UserFirstName']??''; ?>">
    <label >Username</label>
    </div>

    <div class="form-floating mb-3">
    <input type="text" class="form-control" id="floatingInput" placeholder="name" name="UserLastName"  value="<?php echo $rs['UserLastName']??''; ?>">
    <label >Lastname</label>
    </div>

    <div class="form-floating">
    <input type="text" class="form-control" id="floatingPassword" placeholder="address"  name="address"    value="<?php echo $rs['UserAddress']??''; ?>">
    <label >Address</label>
    </div>
    </div>
    
<div class="d-grid gap-2 d-md-block">
<div class="mt-5">
  <button class="btn btn-primary" type="submit">Save</button>
  <a href="profile.php" class="btn btn-primary" type="button">Close </a>
  
  </div>
    </div>
    </form>
        </div>
    </div>
</body>
</html>
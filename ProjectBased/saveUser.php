<?php
//Connect Database
include 'connectDB.php';

//รับค่าข้อมูลผ่าน form
$email = htmlspecialchars($_POST['email']);
$password = htmlspecialchars($_POST['password']);
$name = htmlspecialchars($_POST['name']);
$gender = htmlspecialchars($_POST['gender']);
$address = htmlspecialchars($_POST['address']);
$province = htmlspecialchars($_POST['province']);
$zipcode = htmlspecialchars($_POST['zipcode']);
$phone = htmlspecialchars($_POST['phone']);
$registrationDate = date("Y-m-d H:i:s");


$chanel_internet = $_POST['chanel_internet'];
$chanel_friend = $_POST['chanel_friend'];
$chanel_other = $_POST['chanel_other'];

$source ="";
if(isset($_POST['chanel_internet'])){
    $source.=",".$_POST['chanel_internet'];
}
if(isset($_POST['chanel_friend'])){
    $source.=",".$_POST['chanel_friend'];
}
if(isset($_POST['chanel_other'])){
    $source.=",".$_POST['chanel_other'];
}



echo  "email: " . $email . "<br> ";
echo  "password: " . $password . "<br> ";
echo  "name: " . $name . "<br> ";
echo  "gender: " . $gender . "<br> ";
echo  "address: " . $address . "<br> ";
echo  "province: " . $province . "<br> ";
echo  "zipcode: " . $zipcode . "<br> ";
echo  "phone: " . $phone . "<br> ";


// $source = "";
// if (!empty($chanel_internet)) {
//     $source .= $chanel_internet;
// }
// if (!empty($chanel_friend)) {
//     $source .= "," . $chanel_friend;
// } else if (!empty($chanel_other)) {
//     $source .= "," . $chanel_other;
// }
echo "soure:".$soure."<br>";

$sql = "insert into users (UserEmail,UserPassword,UserFirstName,gender,UserAddress,province,UserZip,phone,media,UserRegistrationDate) values ('$email', '$password', '$name', '$gender', '$address', '$province', '$zipcode', '$phone', '$source', '$registrationDate')";



echo "SQL =" . $sql . "<br>";


// Perform query
if ($result = mysqli_query($con, $sql)) {
    echo "Returned rows are: " . mysqli_num_rows($result);
    
    // Free result set
    mysqli_free_result($result);
}
$con->close();
//ถ้าต้องการ เข้ารหัส password ให้ดูตัวอย่างที่นี่ https://code-boxx.com/password-encrypt-decrypt-php/

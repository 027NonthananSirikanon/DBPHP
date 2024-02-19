<?php 
 $name = "Nonthanan";
$year =2024;
$gpa =3.50;
$status = True;//False
$score =[10,20,30];
echo"Name : ".$name."<br>";
echo "Score = ".$score[0];

if($gpa >= 3.5){
    echo"Excellent Student <br>";
}else if($gpa >=3.0){
    echo"Good Student  <br>";
}else{
    echo"Normal Student <br>";
}

$total = count($score);

for($i=0; $i<$total; $i++){
    echo $score[$i] ."<br>";
}
?>
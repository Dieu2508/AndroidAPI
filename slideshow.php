<?php 
include_once("connect.php");

$query = "select * from slideshow";
$resouter = mysqli_query($con, $query);

$temparray = array();
$total_records = mysqli_num_rows($resouter);

if ($total_records >= 1) {
    while ($row = mysqli_fetch_assoc($resouter)) {
        $maslide = $row['maslide'];
        $imageslide = $row['imageslide'];
        $temparray[] = [$maslide, $imageslide];
    } 
}   
echo json_encode($temparray);

?>
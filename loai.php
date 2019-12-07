<?php 
include_once("connect.php");

if(isset($_GET["maloai"])){
    $query = "select * from loai where maloai='".$_GET["maloai"]."'";
    $resouter = mysqli_query($con, $query);
    
    $temparray = array();
    $total_records = mysqli_num_rows($resouter);
    
    if ($total_records >= 1) {
        while ($row = mysqli_fetch_assoc($resouter)) {
            $maloai = $row['maloai'];
            $tenloai = $row['tenloai'];
            $anh = $row['anh'];
            $temparray[] = [$maloai, $tenloai, $anh];
        } 
    }   
    echo json_encode($temparray);
}
else{
    $query = "select * from loai";
    $resouter = mysqli_query($con, $query);
    
    $temparray = array();
    $total_records = mysqli_num_rows($resouter);
    
    if ($total_records >= 1) {
        while ($row = mysqli_fetch_assoc($resouter)) {
            $maloai = $row['maloai'];
            $tenloai = $row['tenloai'];
            $anh = $row['anh'];
            $temparray[] = [$maloai, $tenloai, $anh];
        } 
    }   
    echo json_encode($temparray);
}
?>
<?php 
include_once("connect.php");

if(isset($_GET["mauser"])){
    $query = "select * from user where mauser='".$_GET["mauser"]."'";
    $resouter = mysqli_query($con, $query);
    
    $temparray = array();
    $total_records = mysqli_num_rows($resouter);
    
    if ($total_records >= 1) {
        while ($row = mysqli_fetch_assoc($resouter)) {
            $mauser = $row['mauser'];
            $username = $row['username'];
            $password = $row['password'];
            $hoten = $row['hoten'];
            $gioitinh = $row['gioitinh'];
            $diachi = $row['diachi'];
            $sodienthoai = $row['sodienthoai'];
            $email = $row['email'];
            $temparray[] = [$mauser, $username, $password, $hoten, $gioitinh, $diachi, $sodienthoai, $email];
        } 
    }   
    echo json_encode($temparray);
}
else{
    $query = "select * from user";
    $resouter = mysqli_query($con, $query);
    
    $temparray = array();
    $total_records = mysqli_num_rows($resouter);
    
    if ($total_records >= 1) {
        while ($row = mysqli_fetch_assoc($resouter)) {
            $mauser = $row['mauser'];
            $username = $row['username'];
            $password = $row['password'];
            $hoten = $row['hoten'];
            $gioitinh = $row['gioitinh'];
            $diachi = $row['diachi'];
            $sodienthoai = $row['sodienthoai'];
            $email = $row['email'];
            $temparray[] = [$mauser, $username, $password, $hoten, $gioitinh, $diachi, $sodienthoai, $email];
        } 
    }   
    echo json_encode($temparray);
}
?>
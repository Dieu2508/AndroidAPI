<?php 
include_once("connect.php");

if(isset($_GET["masp"])){
    $query = "select * from sanpham inner join anh on sanpham.masp=anh.masp where sanpham.masp='".$_GET["masp"]."'";
    $resouter = mysqli_query($con, $query);
    
    $temparray = array();
    $total_records = mysqli_num_rows($resouter);
    
    if ($total_records >= 1) {
        while ($row = mysqli_fetch_assoc($resouter)) {
            $masp = $row['masp'];
            $tensp = $row['tensp'];
            $thuonghieu = $row['thuonghieu'];
            $dungtich = $row['dungtich'];
            $mota = $row['mota'];
            $congdung = $row['congdung'];
            $dongia = $row['dongia'];
            $soluongcosan = $row['soluongcosan'];
            $phivanchuyen = $row['phivanchuyen'];
            $anh = $row['link'];
            $temparray[] = [$masp, $tensp, $thuonghieu, $dungtich, $mota, $congdung, $dongia, $soluongcosan, $phivanchuyen, $anh];
        } 
    }   
    echo json_encode($temparray);
}
else if(isset($_GET["maloai"])){
    $query = "select * from sanpham inner join anh on sanpham.masp=anh.masp where sanpham.maloai='".$_GET["maloai"]."'";
    $resouter = mysqli_query($con, $query);
    
    $temparray = array();
    $total_records = mysqli_num_rows($resouter);
    
    if ($total_records >= 1) {
        while ($row = mysqli_fetch_assoc($resouter)) {
            $masp = $row['masp'];
            $tensp = $row['tensp'];
            $thuonghieu = $row['thuonghieu'];
            $dungtich = $row['dungtich'];
            $mota = $row['mota'];
            $congdung = $row['congdung'];
            $dongia = $row['dongia'];
            $soluongcosan = $row['soluongcosan'];
            $phivanchuyen = $row['phivanchuyen'];
            $anh = $row['link'];
            $temparray[] = [$masp, $tensp, $thuonghieu, $dungtich, $mota, $congdung, $dongia, $soluongcosan, $phivanchuyen, $anh];
        } 
    }   
    echo json_encode($temparray);
}
else{
    $query = "select * from sanpham inner join anh on sanpham.masp=anh.masp";
    $resouter = mysqli_query($con, $query);
    
    $temparray = array();
    $total_records = mysqli_num_rows($resouter);
    
    if ($total_records >= 1) {
        while ($row = mysqli_fetch_assoc($resouter)) {
            $masp = $row['masp'];
            $tensp = $row['tensp'];
            $thuonghieu = $row['thuonghieu'];
            $dungtich = $row['dungtich'];
            $mota = $row['mota'];
            $congdung = $row['congdung'];
            $dongia = $row['dongia'];
            $soluongcosan = $row['soluongcosan'];
            $phivanchuyen = $row['phivanchuyen'];
            $anh = $row['link'];
            $temparray[] = [$masp, $tensp, $thuonghieu, $dungtich, $mota, $congdung, $dongia, $soluongcosan, $phivanchuyen, $anh];
        } 
    }   
    echo json_encode($temparray);
}
?>
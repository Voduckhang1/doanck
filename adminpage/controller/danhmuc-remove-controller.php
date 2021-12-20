<?php
session_start();
if($_SESSION['user_name']){
    $id_dm_sp=$_GET["id_dm_sp"];
include '../ketnoisql/ketnoi.php';

   
    $sql = "DELETE FROM danhmucsp WHERE id_dm_sp = '$id_dm_sp'";
    $query = mysqli_query($conn,$sql);
    header('location:../view/quantri.php?page_layout=quanlydanhmucsanpham');
}
else{
    header('location:../view/index.php');
}


?>

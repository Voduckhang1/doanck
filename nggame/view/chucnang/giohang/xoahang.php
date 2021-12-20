<?php
session_start();

if(isset($_GET['id_sp'])){
    $id_sp=$_GET["id_sp"];
 
    if($id_sp==0){
        unset($_SESSION['giohang']);
      
        
    }else {
       //Xoá sản phẩm 
        unset($_SESSION['giohang'][$id_sp]);
      
    }
    
}
// unset($_SESSION['giohang']);
header("Location: ../../index.php?page_layout=shoping-cart");


?>
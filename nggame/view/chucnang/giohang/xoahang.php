<?php
session_start();

if(isset($_GET['id_sp'])){
    $id_sp=$_GET["id_sp"];
 
    if($id_sp==0){
        unset($_SESSION['giohang']);
      
        
    }else {
        unset($_SESSION['giohang'][$id_sp]);
        if($_SESSION['giohang']==null){
            unset($_SESSION['giohang']);
        }
      
    }
    
}
// unset($_SESSION['giohang']);
header("Location: ../../index.php?page_layout=shoping-cart");


?>
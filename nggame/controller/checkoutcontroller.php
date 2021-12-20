<?php
if (isset($_SESSION['giohang'])) {
    $arrId = array();
    foreach ($_SESSION['giohang'] as $id_sp => $so_luong) {
        $arrId[] = $id_sp;
    }
    $strId = implode(',', $arrId);
    $sql = "SELECT * FROM sanpham WHERE id_sp IN($strId) ORDER BY id_sp DESC";
    $query = mysqli_query($conn, $sql);
}
?>
<?php
function tongtien($query){
    $totalPriceAll1 = 0;
    while ($row1 = mysqli_fetch_array($query)) {
    $totalPrice1 = $row1['don_gia'] * $_SESSION['giohang'][$row1['id_sp']];
    $totalPriceAll1 = $totalPriceAll1 + $totalPrice1;
    }
return $totalPriceAll1;
}

?>
<?php
if (isset($_POST['submit'])) {
    //$id_sp = $_POST['id_sp'];
    $ten_user = $_POST['ten_user'];
    $dia_chi = $_POST['dia_chi'];
    $so_dien_thoai = $_POST['sdt'];
    $email = $_POST['email'];
    $ghi_chu = $_POST['ghichu'];
    $rad_phuongthuc = $_POST['rad_phuongthuc'];
    $trang_thai = "Nhận đơn hàng";
    $id_user = $_SESSION["user"]['id_user'];
    // if(isset($_POST['id_user'])){
    //     $id_user = $_POST['id_user'];
    // } else {
        // $sql_tinhsoluonguser = "SELECT COUNT(id_user) FROM `users`;";
        // $query_tinhsoluonguser = mysqli_query($conn, $sql_tinhsoluonguser);
        // $id_user = $query_tinhsoluonguser + 1;
    // }
    $don_gia =tongtien($query);
    
    
    //Tiến hàng thêm Đơn hàng
    if (isset($id_user) && isset($ten_user) && isset($dia_chi) && isset($so_dien_thoai) && isset($email) && isset($don_gia)) {
        $sql = "INSERT INTO `donhang`(`id_user`, `ten_user`, `dia_chi`, `so_dien_thoai`, `email`, `thanh_tien`,`ghi_chu`, `phuong_thuc_thanh_toan`,`trang_thai`)
        VALUES('$id_user','$ten_user','$dia_chi','$so_dien_thoai','$email','$don_gia','$ghi_chu','$rad_phuongthuc','$trang_thai')";
        $query_themdon = mysqli_query($conn, $sql);
        if ($query_themdon) {
            echo "Thêm Đơn hàng thành công <br>";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }

        //Thêm chi tiết đơn hàng
        if($query_themdon){
            $id_don_hang = mysqli_insert_id($conn);
            foreach ($_SESSION['giohang'] as $id_sp => $so_luong) {
                $sql_dongia = "SELECT * FROM sanpham WHERE id_sp = $id_sp";
                $query_dongia = mysqli_query($conn, $sql_dongia);
                $result = mysqli_fetch_assoc($query_dongia);
                //echo $result["don_gia"];
                $dongia_sanpham = $result["don_gia"];
                $sql_chitiet = "INSERT INTO `chitietdonhang`(`id_don_hang`, `id_sp`, `so_luong`, `don_gia`)
                VALUES('$id_don_hang','$id_sp','$so_luong','$dongia_sanpham')"; 
                $query_chitiet = mysqli_query($conn, $sql_chitiet);
            if ($query_chitiet) {
                            echo "Thêm chi tiết đơn thành công";
                        } else {
                            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
                        }
            }
            unset($_SESSION['giohang']);
            header("Location: ././index.php");
        }


    }
    
}

?>
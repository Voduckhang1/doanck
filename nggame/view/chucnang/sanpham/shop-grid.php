<?php

include_once "../controller/shopgridcontroller.php";
?>
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/banner/banner5.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>NG Game Shop</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.php">Trang chủ</a>
                            <span>Shop</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <!-- shopcategories-->
                <?php include_once './chucnang/sanpham/shopcategories.php'; ?>
                <!-- shopcategories -->
            </div>
            <div class="col-lg-9 col-md-7">
               
                <div class="filter__item">
                    <div class="row">
                        <div class="col-lg-4 col-md-5">
                            <div class="filter__sort">
                                <span>Sort By</span>
                                <select>
                                    <option value="0">Default</option>
                                    <option value="0">Default</option>
                                </select>
                            </div>
                        </div>
                        <!-- <div class="col-lg-4 col-md-4">
                                <div class="filter__found">
                                 
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-3">
                                <div class="filter__option">
                                    <span class="icon_grid-2x2"></span>
                                    <span class="icon_ul"></span>
                                </div>
                            </div> -->
                    </div>
                </div>
                <div class="row">
                   
                <?php
                   //Duyệt tất cả sản phẩm đang có trong database
                    while ($row = mysqli_fetch_array($querysp)){
                    ?>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="featured__item">
    
                        <div class="featured__item__pic set-bg" data-setbg="../../admin/view/pictures/<?php echo $row['anh_sp']?>">
                                <ul class="featured__item__pic__hover">
                                <li><a href="index.php?page_layout=shop-details&id_sp=<?php echo $row['id_sp']; ?>"><i class="fa fa-search"></i></a></li>
                                    <li><a href="index.php?page_layout=shop-grid"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="chucnang/giohang/themhang.php?id_sp=<?php echo $row['id_sp']?>"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                            <h6><a href="index.php?page_layout=shop-details&id_sp=<?php echo $row['id_sp']; ?>"><?php echo $row['ten_sp']; ?></a></h6>
                            <h5><?php  echo number_format($row['don_gia'], 0, '', '.')." VNĐ"; ?></h5>
            

                        </div>
                        </div>
                  
                    </div>
                    <?php }?>
                  
                  
                </div>
                <?php
                //module thanh số trang 1 2 3
                include_once './chucnang/thanhsotrang/thanhsotrang-shop-grid.php';
                ?>
            </div>
        </div>
        </div>
    </section>
    <!-- Product Section End -->

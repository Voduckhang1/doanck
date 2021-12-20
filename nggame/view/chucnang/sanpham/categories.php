
   <?php
                 include "../controller/categoriescontroller.php";
                  ?>
<div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>Thể loại</span>
                        </div>
                        <?php
                        while ($row = mysqli_fetch_array($query)){
                         ?>
                        <ul>
                            <li><a href="#"><?php echo $row["ten_dm_sp"];?></a></li>
  
                        </ul>
                        <?php
                        }
                        ?>
                    </div>
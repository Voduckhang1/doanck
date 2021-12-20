
        <div class="breadcrumbs">
            <div class="breadcrumbs-inner">
                <div class="row m-0">
                    <div class="col-sm-4">
                        <div class="page-header float-left">
                            <div class="page-title">
                                <h1>Quản lý sản phẩm</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="page-header float-right">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><a href="#">Quản lý sản phẩm</a></li>
                                    <li class="active">Chi tiết sản phẩm</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="content">
            <div class="animated fadeIn">
                <div class="row">

                <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <strong>Sửa sản phẩm</strong>
                            </div>
                            <div class="card-body card-block">
                                <form  method="POST" enctype="multipart/form-data" class="form-horizontal">
                    
        
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label" >Tên sản phẩm</label></div>
                                        <div class="col-12 col-md-9"><input type="text" id="name-input" name="ten_sp"  placeholder="Nhập tên sản phẩm" class="form-control"readonly="readonly"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Hệ máy</label></div>
                                        <div class="col-12 col-md-9"><input type="text" id="name-input" name="he_may" placeholder="Nhập hệ máy" class="form-control"readonly="readonly"></div>
                                    </div>
                                  
                                    
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label class=" form-control-label">Tình trạng</label></div>
                                        <div class="col col-md-9">
                                            <div class="form-check">
                                                <div class="radio">
                                                    <label for="radio1" >
                                                        <input type="radio" id="radio1" name="tinh_trang" value="Còn hàng" class="form-check-input"disabled="true">Còn hàng
                                                    </label>
                                                    <label for="radio2" class="form-check-label ">
                                                        <input type="radio" id="radio2" name="tinh_trang" value="Hết hàng" class="form-check-input"disabled="true">Hết hàng
                                                    </label>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                   
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="select" class=" form-control-label">Thể loại</label></div>
                                        <div class="col-12 col-md-9">
                                            <select name="id_dm_sp" id="select-input" class="form-control" disabled="true">
                                              
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="select" class=" form-control-label">Nhà cung cấp</label></div>
                                        <div class="col-12 col-md-9">
                                            <select name="id_ncc"id="select-input" class="form-control" disabled="true">
                                                <option value="0" >Xin chọn nhà cung cấp</option>
                                               
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Đơn giá</label></div>
                                        <div class="col-12 col-md-9"><input type="text" id="stt-input" name="don_gia"placeholder="Nhập đơn giá của sản phẩm" class="form-control"readonly="readonly"></div>
                                    </div>
                                  
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="file-input" class=" form-control-label">Hình ảnh sản phẩm</label></div>
                                        <div class="col-12 col-md-9"><input type="image" width="20%" name="anh_sp" class="form-control-image" readonly="readonly"></div>
                                    </div>
                                    <div class="row form-group">
                                    <div class="col col-md-3"><label for="datetime-input" class=" form-control-label">Ngày tạo</label></div>
                                    <div class="col-12 col-md-9"><input type="text" id="date-input" name="ngay_tao"class="form-control"readonly="readonly"></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="datetime-input" class=" form-control-label">Ngày sửa</label></div>
                                    <div class="col-12 col-md-9"><input type="text" id="date-input" name="ngay_sua" class="form-control" readonly="readonly"></div>
                                </div>
                                
                           
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <?php include "layout/buttonbackpage.php"; ?>
            </div><!-- .animated -->
        </div><!-- .content -->


<div>
    <form class="form p-4"  method="post" action="" enctype="multipart/form-data">
        <p>Thêm Người Dùng</p>        
        <div class="row">
            <div class="col-md-6">
                <div>
                    <label class="form-label" for="">Tên Người Dùng</label class="form-label">
                    <input class="form-control" type="text" name="name" id="" value="<?=$sp['HoTen'] ?>">
                </div>
                <div>           
            </div>
                <div>
                    <label class="form-label" for="">Email</label class="form-label">
                    <input class="form-control" type="text" name="email" id="" value="<?=$sp['Email'] ?>">
                </div>
                <div>
                    <label class="form-label" for="">Mật Khẩu</label class="form-label">
                    <input class="form-control" type="text" name="matKhau" id="" value="<?=$sp['MatKhau'] ?>">
                </div>
                <div>
                    <label class="form-label" for="">Địa Chỉ</label class="form-label">
                    <input class="form-control" type="text" name="DiaChi" id="" value="<?=$sp['DiaChi'] ?>">
                </div>

        
            </div>
            <div class="col-md-6">
                <div>
                    <label class="form-label" for="">Hình ảnh</label class="form-label">
                    <input class="form-control" type="file" name="hinhAnh" id="" value="<?=$sp['Anh'] ?>">
                </div>
                <div>
                    <label class="form-label" for="">Số Điện Thoại</label class="form-label">
                    <input class="form-control" type="text" name="Sdt" id=""value="<?=$sp['SDT'] ?>">
                </div>

                <div>
                <label class="form-label" for="">Trạng Thái</label class="form-label">
                    <select class="form-select" name="TrangThai" id="">
                    <option value="1">Hoạt Động</option>
                    <option value="0">Không Hoạt Động</option>
                    </select>
                </div>
                    <label class="form-label" for="">Vai Trò</label class="form-label">
                    <select class="form-select" name="vaiTro" id="">
                    <option value="1">Khách hàng</option>
                    <option value="0">Admin</option>
                    </select>
            </div>
        </div>
            <br>
            <div class="text-center">
            <input class="btn btn-danger m-5" type="submit" name="userEdit_submit" value="Sửa">
            </div>
    </form>
</div>



<div class="p-5">
    <p class="text-center">QUẢN LÝ NGƯỜI DÙNG</p>
    <a href="?mod=user&act=add" class="btn btn-primary">Thêm người dùng</a>    
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Mã người dùng</th>
                <th>Tên người dùng</th>
                <th>Email</th>
                <th>Hình ảnh</th>
                <th>Địa Chỉ</th>
                <th>Mật Khẩu</th>
                <th>Vai trò</th>
                <th>SĐT</th>
                <th>Trạng Thái</th>
                <th>Thao tác</th>
            </tr>
        </thead>
        <tbody>
        <?php foreach($dsdm as $dm): ?>
            <tr>
                <td><?=$dm['MaKhachHang']?></td>
                <td><?=$dm['HoTen']?></td>
                <td><?=$dm['Email']?></td>
                <td><img src="../content/img/<?=$dm['Anh']?>" width="120px" alt=""></td>
                <td><?=$dm['DiaChi']?></td>
                <td><?=$dm['MatKhau']?></td>
                <?php if($dm['Admin']==0){
                    echo '<td>Khách Hàng</td>';
                    }else {
                        echo '<td>Admin</td>';
                    }?>
                <td><?=$dm['SDT']?></td>
                <?php if($dm['TrangThai']==1){
                    echo '<td>Hoạt Động</td>';
                    }else {
                        echo '<td>ko Hoạt Động</td>';
                    }?>
                <td>
                    <a class="btn btn-primary" href="?mod=user&act=edit&id=<?=$dm['MaKhachHang']?>">Sửa</a>
                    <a class="btn btn-danger" href="?mod=user&act=delete&id=<?=$dm['MaKhachHang']?>">Xóa</a>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <!-- danh sách sản phẩm có phân trang -->
    <!-- <nav aria-label="Page navigation example" class="d-flex justify-content-center">
        <ul class="pagination">
            <?php for($i= 1; $i <= $number_page; $i++) :?>
            <li class="page-item">
                <a class="page-link" href="?mod=product&act=list&page=<?=$i?>"><?=$i?></a>
            </li>
            <?php endfor; ?>
        </ul>
    </nav> -->


</div>
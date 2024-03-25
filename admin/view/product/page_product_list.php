<div class="p-5">
    <p class="text-center">QUẢN LÝ SẢN PHẨM</p>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Mã đơn hàng</th>
                <th>Tên Khách hàng</th>
                <th>Tổng Tiền</th>
                <th>Giá Khuyến Mãi</th>
                <th>Hình Ảnh</th>
                <th>Danh Mục</th>
                <th>Số lượng</th>
                <th>Trạng Thái</th>
                <th>Thao tác</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($product_page as $sp) :?>
            <tr>
                <td><?=$sp['MaSanPham']?></td>
                <td><?=$sp['TenSanPham']?></td>
                <td><?=$sp['Gia']?> </td>
                <td><?=$sp['GiaKhuyenMai']?> đ</td>
                <td><img src="../content/img/<?=$sp['HinhAnh']?>" width="60px" alt=""></td>
                <td><?=$sp['TenDanhMuc']?></td>
                <td><?=$sp['SoLuong']?></td>
                <td><?=$sp['TrangThai']?></td>
                <td>
                    <a href="?mod=product&act=edit&id=<?=$sp['MaSanPham']?>" class="btn btn-success">Sửa</a>
                    <a href="?mod=product&act=delete&id=<?=$sp['MaSanPham']?>" class="btn btn-danger">Xóa</a>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <!-- danh sách sản phẩm có phân trang -->
    <nav aria-label="Page navigation example" class="d-flex justify-content-center">
        <ul class="pagination">
            <?php for($i= 1; $i <= $number_page; $i++) :?>
            <li class="page-item">
                <a class="page-link" href="?mod=product&act=list&page=<?=$i?>"><?=$i?></a>
            </li>
            <?php endfor; ?>
        </ul>
    </nav>


</div>
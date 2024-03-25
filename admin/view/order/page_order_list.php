<div class="p-5">
    <p class="text-center">LỊCH SỬ ĐƠN HÀNG</p>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Mã đơn hàng</th>
                <th>Mã Khách hàng</th>
                <th>Tổng Tiền</th>
                <th>Ngày Đặt Hàng</th>
                <th>Trạng Thái</th>
                <th>Ghi Chú</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($dsdm as $sp) :?>
            <tr>
                <td><?=$sp['MaDonHang']?></td>
                <td><?=$sp['HoTen']?></td>
                <td><?=$sp['TongTien']?> đ</td>
                <td><?=$sp['NgayDatHang']?> đ</td>
                <td><?=$sp['TrangThai']?></td>
                <td><?=$sp['GhiChu']?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>



</div>
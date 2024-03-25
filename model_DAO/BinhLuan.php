
<?php
 include_once 'pdo.php';
 function binhLuan_list(){
    $sql = "SELECT * FROM binhluan";
    return pdo_query($sql);
}

function user_namelist(){
    $sql = "SELECT * FROM binhluan 
    INNER JOIN sanpham on binhluan.MaSanPham = sanpham.MaSanPham
    INNER JOIN khachhang on binhluan.MaKhachHang = khachhang.MaKhachHang
    ";
    return pdo_query($sql);
}
function user_one($id){
    $sql = "SELECT * FROM binhluan 
    INNER JOIN sanpham on binhluan.MaSanPham = sanpham.MaSanPham
    INNER JOIN khachhang on binhluan.MaKhachHang = khachhang.MaKhachHang WHERE MaBinhLuan=?";
    return pdo_query_one($sql, $id);
}
function user_edit($id,$NoiDung,$Duyet){
        $sql = "UPDATE binhluan SET NoiDung =?,Duyet=? WHERE MaBinhLuan =?";
        return pdo_execute($sql,$NoiDung,$Duyet,$id);
    }
    function user_delete($id){
        $sql = "DELETE FROM binhluan WHERE MaBinhLuan=?";
        return pdo_execute($sql, $id);
    }
?>
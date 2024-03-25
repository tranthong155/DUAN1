
<?php
     include_once 'pdo.php';
 function other_list(){
     $sql = "SELECT * FROM donhang";
     return pdo_query($sql);
    }
    
function name_other() {
    $sql = "SELECT * FROM donhang 
    INNER JOIN khachhang on donhang.MaKhachHang = khachhang.MaKhachHang";
    return pdo_query($sql);
}

?>
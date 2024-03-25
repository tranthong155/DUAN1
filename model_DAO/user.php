<?php
include_once 'pdo.php';
    function user_list(){
        $sql = "SELECT * FROM khachhang";
        return pdo_query($sql);
    }
    function user_add($email, $matKhau,$name,$DiaChi, $Sdt, $vaiTro, $hinhAnh,$TrangThai ){
        $sql = "INSERT INTO khachhang(Email,MatKhau,HoTen,DiaChi,SDT, Admin, Anh, TrangThai) VALUES(?, ?, ?, ?, ?, ?,?,?)";
        return pdo_query($sql,$email, $matKhau,$name,$DiaChi, $Sdt, $vaiTro, $hinhAnh,$TrangThai);
    }

    function user_delete($id){
        $sql = "DELETE FROM khachhang WHERE MaKhachHang=?";
        return pdo_execute($sql, $id);
    }

    
    function check_login($email, $pass){
        $sql = "SELECT * FROM KhachHang WHERE Email=? AND MatKhau=?";
        return pdo_query_one($sql, $email, $pass);
    }
    
    function user_one($id){
        $sql = " SELECT * FROM khachHang WHERE MaKhachHang=?";
        return pdo_query_one($sql, $id);
    }
    
    function user_register($name, $email, $pass, $address, $phone, $image){
        $sql = "INSERT INTO KhachHang(HoTen, Email, MatKhau, DiaChi, SDT, Anh) VALUE (?,?,?,?,?,?)";
        return pdo_execute($sql, $name, $email, $pass, $address, $phone, $image);
    }
    
    function user_edit($id,$email,$matKhau,$name,$DiaChi,$Sdt,$vaiTro,$hinhAnh,$TrangThai){
        $sql = "UPDATE khachhang SET Email =?,MatKhau =?, HoTen =?,DiaChi=?,SDT=?,Admin =?,Anh=?,TrangThai=? WHERE MaKhachHang =?";
        return pdo_execute($sql,$email,$matKhau,$name,$DiaChi,$Sdt,$vaiTro,$hinhAnh,$TrangThai,$id);
    }
    ?>
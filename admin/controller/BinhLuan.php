<?php 
include_once '../model_DAO/BinhLuan.php';
extract($_REQUEST);
if(isset($act)){
    switch($act){
        case 'list':
            $name = user_namelist();

            include_once 'view/template_header.php';
            include_once   'view/BinhLuan/page_BinhLuan_list.php';
            include_once 'view/template_footer.php';
            break;
        case 'edit':
            $sp = user_one($id);
            $binhLuan = binhLuan_list();
                if(isset($binhLuanEdit_submit)){
                    user_edit($id,$NoiDung,$Duyet); 
                    header('location: ?mod=feedback&act=list');  
                }
            include_once 'view/template_header.php';
            include_once   'view/BinhLuan/page_BinhLuan_edit.php';
            include_once 'view/template_footer.php';
            break;
        case 'delete':
            user_delete($id);
                header('location: ?mod=feedback&act=list');
                break;




}}
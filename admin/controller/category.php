<?php 
include_once '../model_DAO/category.php';
extract($_REQUEST);
if(isset($act)){
    switch($act){
            case 'list':
                $dsdm = category_list();
                // print_r($dsdm);
                include_once 'view/template_header.php';
                include_once   'view/category/page_category_list.php';
                include_once 'view/template_footer.php';
                break;
            case 'add':
                if(isset($addCategory_submit)){
                    category_add($name,$_FILES['image']['name'],$status);
                    move_uploaded_file(['image']['tmp_name'],'../content/image/'.$_FILES['image']['name']);
                    header('location: ?mod=category&act=list');
                }
                include_once 'view/template_header.php';
                include_once   'view/category/page_category_add.php';
                include_once 'view/template_footer.php';
                break;
            case 'edit':
                $dm=category_getOne($id);
                if(isset($editCategory_submit)){
                category_edit($name,$_FILES['image']['name'],$status, $id);
                move_uploaded_file(['image']['tmp_name'],'../content/image/'.$_FILES['image']['name']);
                header('location: ?mod=category&act=list');
                }
                include_once 'view/template_header.php';
                include_once   'view/category/page_category_edit.php';
                include_once 'view/template_footer.php';
                break;
            case 'delete':
                category_delete($id);
                header('location: ?mod=category&act=list');
                break;
    }
}
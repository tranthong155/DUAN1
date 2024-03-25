<?php 
include_once '../model_DAO/order.php';
extract($_REQUEST);
if(isset($act)){
    switch($act){
        case 'list':
            $dsdm = name_other();

            include_once 'view/template_header.php';
            include_once   'view/order/page_order_list.php';
            include_once 'view/template_footer.php';
            break;




}}
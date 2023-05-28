<?php
    require_once('../app/config/config.php');
    require_once APP_ROOT.'/app/connectDB/connect.php';
    require_once APP_ROOT.'/app/services/doctor_service.php';

    $doctor = new doctor_service();
    $service = $doctor-> getAlldoctor();

    echo "<pre>";
    print_r($service);
    echo "</pre>";
?>
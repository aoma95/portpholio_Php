<?php
//define('WEBROOT',str_remplace('index.php','',$_SERVER['SCRIPT_NAME']));
//define('ROOT',str_remplace('index.php','',$_SERVER['SCRIPT_FILENAME']));

require('controllers/controller.php');
//echo $SERVER;
if (isset($_GET['page'])) {
    switch ($_GET['page']) {
        case "cv":
            $image_profil = post_image('image  Dan ESPOSITO miniature');
            require('view/header_view.php');
            require('view/footer_view.php');
            require('view/cv_view.php');
            break;

        case "projet":
            require('view/header_view.php');
            require('view/footer_view.php');
            require('view/projet_view.php');
            break;

        case "admin":
            require('admin/view/log_view.php');
            break;

        case "dashboard":
            require('admin/view/dashboard_view.php');
            break;
    }
} else {
    require('view/header_view.php');
    require('view/footer_view.php');
    require('view/index_view.php');
}

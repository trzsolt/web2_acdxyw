<?php

//alkalmazás gyökér könyvtára a szerveren
define('SERVER_ROOT', $_SERVER['DOCUMENT_ROOT'].'/public_html/web2_acdxyw/');

//URL cím az alkalmazás gyökeréhez
define('SITE_ROOT', 'http://localhost/public_html/web2_acdxyw/');

// a router.php vezérlõ betöltése
require_once(SERVER_ROOT . 'controllers/' . 'router.php');

?>
<?php
$page = $_GET['page'];
include($page);
?>


<!-- <?php
$whitelist = array('about.php', 'contact.php');
$page = $_GET['page'];
if (in_array($page, $whitelist)) {
    include($page);
} else {
    echo "Archivo no permitido.";
}
?> -->

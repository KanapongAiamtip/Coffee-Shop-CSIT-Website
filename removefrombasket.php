<?php
require('session.php');

if (isset($_GET['itemid'])) {
    $itemid = $_GET['itemid'];

    // Get the current basket
    $basket = $_SESSION['basket'];

    // Modify the basket
    for ($i = 0; $i < count($basket); $i++) {
        if ($basket[$i]['itemid'] == $itemid) {
            array_splice($basket, $i, 1);
            break;
        }
    }

    // Save the basket
    $_SESSION['basket'] = $basket;
}
else {
    $_SESSION['basket'] = [];
}

header('Location: basket.php');
exit();

<?php
require('session.php');
require('dbconnect.php');
require('header.php');

$basket = $_SESSION['basket'];

if (count($basket) > 0) {
    ?>

    <table class="table table-bordered" style="margin-top: 20px">
        <thead>
        <tr>
            <th colspan="2">Product</th>
            <th class="text-right">Unit price</th>
            <th class="text-right">Quantity</th>
            <th class="text-right">Total</th>
            <th></th>
        </tr>
        </thead>
        <tbody>

    <?php
    $grandTotal = 0;
    foreach ($basket as $item) {
            $itemid = $item['itemid'];
            $quantity = $item['quantity'];

            $results = $conn->query("select itemid, picture, detail, unitprice from tbproduct where itemid = '$itemid'");
            if ($row = $results->fetch_assoc()) {
                ?>
                <tr>
                    <td>
                        <img src="images/<?php echo $row['picture'] ?>" style="width: 30px; height: 30px; object-fit: cover"></td>
                    <td><?php echo $row['detail'] ?></td>
                    <td class="text-right"><?php echo $row['unitprice'] ?></td>
                    <td class="text-right"><?php echo $quantity ?></td>
                    <td class="text-right"><?php echo $quantity*$row['unitprice'] ?></td>
                    <td class="text-center">
                        <a href="removefrombasket.php?itemid=<?php echo $row['itemid'] ?>" class="btn btn-sm btn-default">
                            <span class="glyphicon glyphicon-trash"></span>
                        </a>
                    </td>
                </tr>
                <?php
                $grandTotal = $grandTotal + $quantity*$row['unitprice'];
            }
    }
    ?>
        </tbody>
        <tfoot>
        <tr>
            <th colspan="4" class="text-right">Grand total</th>
            <th class="text-right"><?php echo $grandTotal ?></th>
            <th></th>
        </tr>
        </tfoot>
    </table>
    <p>
        <a href="removefrombasket.php" class="btn btn-sm btn-default">
            <span class="glyphicon glyphicon-trash"></span> Remove all items
        </a>
    </p>
    <?php
}
else {
    ?>

    <p>Your basket is empty. Let's <a href="index.php">go shopping</a>!</p>

    <?php
}

require('footer.php');
?>
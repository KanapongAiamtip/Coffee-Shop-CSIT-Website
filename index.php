<?php
require('session.php');
require('dbconnect.php');
require('header.php');

$sql = "select itemid, picture, detail, unitprice from tbproduct";
$results = $conn->query($sql);
?>

    <div class="row">
        <?php
        while ($row = $results->fetch_assoc()) {
            ?>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="images/<?php echo $row['picture'] ?>" alt="..." style="width: 250px; height: 250px; object-fit: cover;">
                    <div class="caption text-center">
                        <h4><?php echo $row['detail'] ?></h4>
                        <p><?php echo $row['unitprice'] ?> baht</p>
                        <p><a href="addtobasket.php?itemid=<?php echo $row['itemid'] ?>" class="btn btn-primary" role="button">Add to basket</a></p>
                    </div>
                </div>
            </div>
            <?php
        }
        ?>
    </div>

<?php
require('footer.php');
?>

<?php
require('lock.php');
require('../dbconnect.php');
?><!DOCTYPE html>
<html lang="en">
<head>
    <title>My Coffee Shop</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body class="container">
<?php
$category = isset($_GET['category']) ? $_GET['category'] : "";
$type = isset($_GET['type']) ? $_GET['type'] : "";
if ($type != "" && $category != "") {
    $sql = "select itemid, picture, detail, unitprice from tbproduct where tbcategory_catid = '$category' and tbtype_typeid = '$type'";
}
else if ($type != "") {
    $sql = "select itemid, picture, detail, unitprice from tbproduct where tbtype_typeid = '$type'";
}
else if ($category != "") {
    $sql = "select itemid, picture, detail, unitprice from tbproduct where tbcategory_catid = '$category'";
}
else {
    $sql = "select itemid, picture, detail, unitprice from tbproduct";
}
$results = $conn->query($sql);
?>

    <h1>My Coffee Shop Admin <small>Products</small></h1>

    <a href="logout.php" class="btn btn-danger pull-right" style="margin-left: 10px">Logout</a>
    <a href="addproduct.php" class="btn btn-primary pull-right">Add product</a>
    <form method="get" class="form-inline">
        Category: &nbsp;
        <select name="category" class="form-control">
            <option value="">All</option>
            <?php
            $categories = $conn->query('select catid, catname from tbcategory');
            while($row = $categories->fetch_assoc()) {
                ?>
                <option value="<?php echo $row['catid'] ?>"><?php echo $row['catname'] ?></option>
                <?php
            }
            ?>
        </select> &nbsp;
        Type:
        <select name="type" class="form-control">
            <option value="">All</option>
            <?php
            $types = $conn->query('select typeid, typename from tbtype');
            while($row = $types->fetch_assoc()) {
                ?>
                <option value="<?php echo $row['typeid'] ?>"><?php echo $row['typename'] ?></option>
                <?php
            }
            ?>
        </select> &nbsp;
        <input class="btn btn-primary" type="submit" value="Filter">
    </form>

    <table class="table table-bordered" style="margin-top: 20px">
        <thead>
            <tr>
                <th>Product</th>
                <th>Price</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
        <?php
        while($row = $results->fetch_assoc()) {
            ?>
            <tr>
                <td>
                    <img src="../images/<?php echo $row['picture'] ?>"  style="width: 30px; height: 30px; object-fit: cover;">
                    <?php echo $row['detail'] ?>
                </td>
                <td><?php echo $row['unitprice'] ?></td>
                <td class="text-center">
                    <a href="deleteproduct.php?itemid=<?php echo $row['itemid'] ?>" class="btn btn-sm btn-default">
                        <span class="glyphicon glyphicon-trash"></span>
                    </a>
                </td>
            </tr>
            <?php
        }
        ?>
        </tbody>
    </table>

<?php
$conn->close();
?>
</body>
</html>
<?php
require('lock.php');
require('../dbconnect.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    // Get the posted data
    $itemid = $_POST['itemid'];
    $name = $_POST['name'];
    $category = $_POST['category'];
    $type = $_POST['type'];
    $price = $_POST['price'];

    // Prepare sql and bind parameters
    $sql = "insert into tbproduct (itemid, detail, tbcategory_catid, tbtype_typeid, unitprice) values (?, ?, ?, ?, ?)";
    $statement = $conn->prepare($sql);
    $statement->bind_param('ssssi', $itemid, $name, $category, $type, $price);
    $result = $statement->execute();

    // Execute sql and check for failure
    if (!$result) {
        die('Execute failed: ' . $statement->error);
    }

    // Redirect
    header('Location: index.php');
    exit();
}
?><!DOCTYPE html>
<html lang="en">
<head>
    <title>My Coffee Shop</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body class="container">

    <h1>My Coffee Shop: <small>Add product</small></h1>

    <form method="post" class="form">
        <div class="form-group">
            <label for="itemid">Item ID</label>
            <input type="text" name="itemid" class="form-control">
        </div>
        <div class="form-group">
            <label for="name">Product name</label>
            <input type="text" name="name" class="form-control">
        </div>
        <div class="form-group">
            <label for="category">Category</label>
            <select name="category" class="form-control">
                <?php
                $categories = $conn->query('select catid, catname from tbcategory');
                while($row = $categories->fetch_assoc()) {
                    ?>
                    <option value="<?php echo $row['catid'] ?>"><?php echo $row['catname'] ?></option>
                    <?php
                }
                ?>
            </select>
        </div>
        <div class="form-group">
            <label for="type">Type</label>
            <select name="type" class="form-control">
                <?php
                $types = $conn->query('select typeid, typename from tbtype');
                while($row = $types->fetch_assoc()) {
                    ?>
                    <option value="<?php echo $row['typeid'] ?>"><?php echo $row['typename'] ?></option>
                    <?php
                }
                ?>
            </select>
        </div>
        <div class="form-group">
            <label for="price">Unit price</label>
            <input type="text" name="price" class="form-control">
        </div>
        <input class="btn btn-primary" type="submit" value="Save"> <a href="index.php" class="btn btn-default">Cancel</a>
    </form>

<?php
$conn->close();
?>
</body>
</html>
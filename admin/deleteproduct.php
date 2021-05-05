<?php
require('lock.php');
require('../dbconnect.php');

$itemid = $_GET['itemid'];

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    // Prepare sql and bind parameters
    $sql = "delete from tbproduct where itemid = ?";
    $statement = $conn->prepare($sql);
    $statement->bind_param('s', $itemid);
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

    <h1>My Coffee Shop Admin: <small>Delete product</small></h1>

    <?php
    $sql = "select detail from tbproduct where itemid = $itemid";
    $categories = $conn->query($sql);
    $row = $categories->fetch_assoc();
    ?>
    <p>Are you sure you want to delete '<?php echo $row['detail'] ?>'?</p>

    <form method="post" class="form">
        <input class="btn btn-danger" type="submit" value="Delete">
        <a href="index.php" class="btn btn-default">Cancel</a>
    </form>

<?php
$conn->close();
?>
</body>
</html>
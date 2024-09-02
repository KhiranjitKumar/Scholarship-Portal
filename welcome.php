<?php

session_start();

if (!isset($_SESSION['username'])) {
    header("Location: index.php");
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <link rel="stylesheet" type="text/css" href="style2.css">


    <title>Welcome</title>
</head>
<a href="logout.php" class="btn btn-success btn-small ">LOG OUT</a>

<body>





    <div class="welcome">
        <?php echo "<h1>Welcome " . $_SESSION['username'] . "</h1>"; ?>
    </div>
    <BR></BR>

    <div class="x">
        <a href="intschl.php" class="btn btn-success btn-large text-align=center">Enter to View Scholarships</a>
    </div>
</body>

</html>
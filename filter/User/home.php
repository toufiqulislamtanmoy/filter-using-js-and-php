<?php
include("../Admin/class/main.php");
$filterObj= new filter();
$retun_value= $filterObj->display();


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Filter</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" rel="stylesheet">

</head>
<body>

    <section class="container">
        <form action="" method="post" enctype="multipart/form-data">
            <i class="fas fa-search"></i>
            <input type="text" name="search-text" id="search-txt" placeholder="Search Product" onkeyup="search()">
        </form>
        <div class="product-list">

            <?php
            while($values= mysqli_fetch_assoc($retun_value))
            {
            ?>
            <div class="product">
                <img src="../Admin/upload/<?php echo $values['img'];?>" alt="Image not Found">
                <div class="product-details">
                    <h2><?php echo $values['Product_title'] ?></h2>
                    <h4>৳<?php echo $values['Price'] ?></h4>
                </div>
            </div>
            <?php
            }
            ?>
        </div>
    </section>



    <script src="js/index.js"></script>
    
</body>
</html>
<?php
include("class/main.php");
$fillterObj=new filter();
if(isset($_POST['upload'])){
    $return_msg=$fillterObj->upload($_POST);
    echo $return_msg;
    
}

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h2 class="header">Admin Panel</h2>
    <form action="" method="post" enctype="multipart/form-data">
        <h2 class="title-txt">Upload Product Details</h2>
        <div class="form-details">
            <div class="title-txt">
                <label for="title">Product Title</label>
                <input type="text" placeholder="Product Title" name="productTitle">
            </div>

            
            <div class="title-txt">
                <label for="productPrice">Product Price</label>
                <input type="text" placeholder="Product Price" name="productPrice">
            </div>

            
            <div id="productImage">
                <label class="title-txt" for="productImage">Product Price</label>
                <input type="file" name="productImage">
            </div>

            <div id="upload">
                
                <input type="submit" name="upload" value="Upload" id="upload-btn">
            </div>
        </div>
    </form>
</body>
</html>
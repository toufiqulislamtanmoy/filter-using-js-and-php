<?php
class filter{

    private $conn;
    function __construct()
    {
        $dbhost="localhost";
        $dbuser="root";
        $dbpass="";
        $dbname="image_filter";
        $this->conn=mysqli_connect("$dbhost","$dbuser","$dbpass","$dbname");
        if(!$this->conn){
            echo "Conncton Faild";
        }else{
            echo "Connection Successfull";
        }
    }

    function upload($data){
        $product_title=$data['productTitle'];
        $product_price=$data['productPrice'];
        $img_name=$_FILES['productImage']['name'];
        $temp_name=$_FILES['productImage']['tmp_name'];
        $extention=pathinfo($img_name,PATHINFO_EXTENSION);
        if($extention=="jpg" || $extention=="jepg" || $extention=="png"){
            $query="INSERT INTO product_table(Product_title,Price,img) VALUES('$product_title','$product_price','$img_name')";
            $inser_data=mysqli_query($this->conn,$query);
            if($inser_data){
                move_uploaded_file($temp_name,'upload/'.$img_name);
                ?>
                    <script>
                        alert("Product Add Successfully");
                    </script>
                <?php
            }else{
                ?>
                    <script>
                        alert("Product Can not Add Successfully");
                    </script>
                <?php
            }
        }
        

    }



    function display(){
        $query="SELECT *FROM product_table ORDER BY Product_title";
        $disp_product=mysqli_query($this->conn,$query);
        if($disp_product){
            return $disp_product;
        }else{
            ?>
                <script>
                    alert("Can Not Display Product");
                </script>
            <?php
        }
    }
}




?>
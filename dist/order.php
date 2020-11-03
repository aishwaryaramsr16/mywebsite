<?php 

include("includes/db.php");
include("functions/functions.php");

?>
<?php 

if(isset($_GET['c_id'])){
    
    $customer_id = $_GET['c_id'];
    
}

//if(isset($_SESSION['ship_address'])) $ship_address=$_SESSION['ship_address'];
//if(isset($_SESSION['ship_method'])) $ship_method=$_SESSION['ship_method'];
//if(isset($_SESSION['account_no'])) $account_no=$_SESSION['account_no'];

if(isset($_POST['ship_address'])) $ship_address=$_POST['ship_address'];
if(isset($_POST['ship_method'])) $ship_method=$_POST['ship_method'];
if(isset($_POST['account_no'])) $account_no=$_POST['account_no'];


$ip_add = getRealIpUser();


$status = "Complete";

$invoice_no = mt_rand();

$select_cart = "select * from cart where ip_add='$ip_add'";

$run_cart = mysqli_query($con,$select_cart);

while($row_cart = mysqli_fetch_array($run_cart)){
    
    $pro_id = $row_cart['p_id'];
    
    $pro_qty = $row_cart['qty'];
    
    $pro_size = $row_cart['size'];
    
    $get_products = "select * from products where product_id='$pro_id'";
    
    $run_products = mysqli_query($con,$get_products);
    
    while($row_products = mysqli_fetch_array($run_products)){
        
         $sub_total = $row_products['product_price']*$pro_qty;
         
         $item_stock_count = $row_products['p_instock'];
         $item_out_stock_count = $row_products['p_outstock'];
         $new_stock_count = $item_stock_count - $pro_qty;
         $p_outstock = $item_out_stock_count + $pro_qty;
        
        if($new_stock_count < 0){
            echo "<script>alert('Out of Stock, Cannot place order')</script>";
        
        }
          else{
         $reduce_stock = "update products set p_instock = $new_stock_count, p_outstock=$p_outstock where product_id='$pro_id'";

        $run_reduce_stock = mysqli_query($con, $reduce_stock);
       
              
        
        $insert_customer_order = "insert into customer_orders (due_amount,invoice_no,qty) values ('$sub_total','$invoice_no','$pro_qty')";
        
        
        $run_customer_order = mysqli_query($con,$insert_customer_order);
        
       
        $delete_cart = "delete from cart where ip_add='$ip_add'";
        
        $run_delete = mysqli_query($con,$delete_cart);
        
        echo "<script>alert('Your orders has been submitted and your confirmation number is $invoice_no')</script>";
        
        echo "<script>window.open('customer/my_account.php?my_orders','_self')</script>";
          }
        
      }
    
   }


?>





                 
 
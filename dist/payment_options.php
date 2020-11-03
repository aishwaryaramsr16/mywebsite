


   <div class="panel-body">
    <form method="post" class="form-horizontal" enctype="multipart/form-data"><!-- form-horizontal Begin -->
                   
           <div class="col-md-4"><!-- col-md-3 Begin -->
               
               <div id="order-summary" class="box"><!-- box Begin -->
                   
                   <div class="box-header"><!-- box-header Begin -->
                       
                       <?php 
                       
                       $ip_add = getRealIpUser();
                       
                       $select_cart = "select * from cart where ip_add='$ip_add'";
                       
                       $run_cart = mysqli_query($con,$select_cart);
                       
                       $count = mysqli_num_rows($run_cart);
                       
                       ?>
                       
                        
                      
                                  
                                  <?php 
                                   
                                   $total = 0;
                                   
                                   while($row_cart = mysqli_fetch_array($run_cart)){
                                       
                                     $pro_id = $row_cart['p_id'];
                                       
                                     $pro_size = $row_cart['size'];
                                       
                                     $pro_qty = $row_cart['qty'];
                                       
                                       $get_products = "select * from products where product_id='$pro_id'";
                                       
                                       $run_products = mysqli_query($con,$get_products);
                                       
                                       while($row_products = mysqli_fetch_array($run_products)){
                                           
                                           $product_title = $row_products['product_title'];
                                           
                                           $product_img1 = $row_products['product_img1'];
                                           
                                           $only_price = $row_products['product_price'];
                                           
                                           $sub_total = $row_products['product_price']*$pro_qty;
                                                                                      
                                           $tax_amt= $total * 0.05;
                                           
                                           $total += $sub_total + $tax_amt;
                                           
                                   ?>
                                   
                                   
                                   
                                   <?php } } ?>
                                   
                               
                       <h3>Order Summary</h3>
                       
                  </div><!-- box header Finish-->
                  <p class="text-muted"><!-- text-muted Begin -->
                       
                       Shipping and additional costs are calculated based on value you have entered
                       
                   </p><!-- text-muted Finish -->
                   
                   <div class="table-responsive"><!-- table-responsive Begin -->
                       
                       <table class="table"><!-- table Begin -->
                           
                           <tbody><!-- tbody Begin -->
                               
                               <tr><!-- tr Begin -->
                                   
                                   <td> Order All Sub-Total </td>
                                   <th> $<?php echo $total - $tax_amt; ?> </th>
                                   
                               </tr><!-- tr Finish -->
                               
                               <tr><!-- tr Begin -->
                                   
                                   <td> Shipping and Handling </td>
                                   <td> $0 </td>
                                   
                               </tr><!-- tr Finish -->
                               
                               <tr><!-- tr Begin -->
                                   
                                   <td> Tax </td>
                                   <th> $<?php echo $tax_amt; ?> </th>
                                   
                               </tr><!-- tr Finish -->
                               
                               <tr class="total"><!-- tr Begin -->
                                   
                                   <td> Total </td>
                                   <th> $<?php echo $total; ?> </th>
                                   
                               </tr><!-- tr Finish -->
                               
                           </tbody><!-- tbody Finish -->
                           
                       </table><!-- table Finish -->
                       
                   </div><!-- table-responsive Finish -->
                    
               </div><!-- box Finish -->
               
           </div><!-- col-md-6 Finish -->
           
           <div class="col-md-4"><!-- col-md-3 Begin -->
               
               <div id="order-summary" class="box"><!-- box Begin -->
                   
                   <div class="box-header"><!-- box-header Begin -->
                       
                       <h3>Shipping</h3>
                       
                   </div><!-- box-header Finish -->
                   
                       <div class="table-responsive"><!-- table-responsive Begin -->
                       
                       <table class="table"><!-- table Begin -->
                           
                           <tbody><!-- tbody Begin -->
                                                                   
                              <tr>
                               
                                <td>
                                                
                                     <div class="form-group"><!-- form-group Begin -->

                                      <label class="col-md-12 control-label"> Shipping Method </label> 

                                      <div class="col-md-12"><!-- col-md-6 Begin -->

                                      <select name="ship_method" class="form-control"><!-- form-control Begin -->

                                          <option> Select Category </option>
                                          <option> Standard Delivery </option>
                                          <option> Speed Delivery </option>

                                      </select><!-- form-control Finish -->

                                      </div><!-- col-md-9 Finish -->

                                   </div><!-- form-group Finish -->

                                </td>
                               
                               </tr>
                               
                               <tr> 
                                    <td>  
                                      
                                     <div class="form-group"><!-- form-group Begin -->

                                      <label class="col-md-9 control-label"> Enter Address </label> 

                                      <div class="col-md-12"><!-- col-md-6 Begin -->

                                          <input name="ship_address" type="text" class="form-control" required>

                                      </div><!-- col-md-9 Finish -->

                                      </div><!-- form-group Finish -->
                                      
                                    </td>
                               </tr>
                               
                          </tbody><!-- tbody Finish -->
                           
                       </table><!-- table Finish -->
                       
                   </div><!-- table-responsive Finish -->
                      
               </div><!-- box Finish -->
               
           </div><!-- col-md-6 Finish -->
           
           <div class="col-md-4"><!-- col-md-3 Begin -->
               
               <div id="order-summary" class="box"><!-- box Begin -->
                   
                   <div class="box-header"><!-- box-header Begin -->
                       
                       <h3>Payment</h3>
                       
                   </div><!-- box-header Finish -->
                   
                       <div class="table-responsive"><!-- table-responsive Begin -->
                       
                       <table class="table"><!-- table Begin -->
                           
                           <tbody><!-- tbody Begin -->
                                                                   
                                                            
                               <tr> 
                                    <td>  
                                      
                                     <div class="form-group"><!-- form-group Begin -->

                                      <label class="col-md-12 control-label"> Account Number </label> 

                                      <div class="col-md-12"><!-- col-md-6 Begin -->

                                          <input name="account_no" type="text" class="form-control" required>

                                      </div><!-- col-md-9 Finish -->

                                      </div><!-- form-group Finish -->
                                      
                                    </td>
                               </tr>
                              
                                 <tr> 
                                    <td> 
                                     <?php 
    
                                        $session_email = $_SESSION['customer_email'];

                                        $select_customer = "select * from customers where customer_email='$session_email'";

                                        $run_customer = mysqli_query($con,$select_customer);

                                        $row_customer = mysqli_fetch_array($run_customer);

                                        $customer_id = $row_customer['customer_id'];

                                        ?>
                                        
                                                                          
                                    <center>
                                    
                          
                                       
                                       <input name="submit" value="Confirm Payment" type="submit" type="hidden" class="btn btn-primary form-control">
                          
                                    
                                    </center> 
                                
                                  </td>
                                 
                               </tr>
                               
                          </tbody><!-- tbody Finish -->
                           
                       </table><!-- table Finish -->
                       
                   </div><!-- table-responsive Finish -->
                      
               </div><!-- box Finish -->
               
           </div><!-- col-md-6 Finish -->
    </form>
</div>

<?php 

include("includes/db.php");

?>

<?php 
   // start_session();
   if(isset($_POST['submit'])) {
        $ship_method=$_POST['ship_method'];
        $ship_address=$_POST['ship_address'];
        $account_no=$_POST['account_no'];
   
   
// $_SESSION['ship_method']=$ship_method;
// $_SESSION['ship_address']=$ship_address;
// $_SESSION['account_no']=$account_no;
                             
        
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
       
              
        $insert_customer_order = "insert into customer_orders (customer_id,pro_id,due_amount,invoice_no,qty,ship_address,ship_method,order_date,account_no,order_status) values ('$customer_id','$pro_id','$sub_total','$invoice_no','$pro_qty','$ship_address','$ship_method',NOW(),'$account_no','$status')";
        
        
        $run_customer_order = mysqli_query($con,$insert_customer_order);
        
       
        $delete_cart = "delete from cart where ip_add='$ip_add'";
        
        $run_delete = mysqli_query($con,$delete_cart);
        
        echo "<script>alert('Your orders has been submitted and your confirmation number is $invoice_no')</script>";
        
        echo "<script>window.open('customer/my_account.php?my_orders','_self')</script>";
         
          }
       }
          
    }
       
   }
?>

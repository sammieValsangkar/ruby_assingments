$order_file='orders.csv'
$order_properties=['product_id','qty','name','card_no','cvv','contact_no']
class User
  def purchase
    arr=UserInteractions.create_cart
     arr.concat UserInteractions.get_customer_info
     p arr
     Operations.save_order(arr)
  end
end
class User
  def purchase
    arr=UserInteractions.create_cart
    p arr
    Product.product_available?(arr)
    UserInteractions.get_customer_info
  end
end
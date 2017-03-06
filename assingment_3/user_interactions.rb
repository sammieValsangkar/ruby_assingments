class UserInteraction
  def self.get_Product_Details
    arr=[]
    $ProductProperties.drop(1).each do | pr|
      print "Enter Product #{pr} :"
      arr<<gets.chomp
    end
    arr
  end
  def self.show_options
    puts "Enter Your Choice"
    puts "Login As :"
    puts "1:Shopkeeper 2:User"
  end
  def self.show_shopkeepers_menu
    puts "\nEnter Your Choice"
    puts "1: Add Product \n2:Remove \n3:List \n4: Search \n5: Edit \n6:Exit"
  end
  def self.show_users_menu
    puts "\nEnter Your Choice"
    puts "1: List \n2: Search \n3: Buy "
  end
  def self.create_cart
    arr=[]
    puts "Enter Product Id"
    arr<<gets.chomp.to_i
    puts "Enter Quantity"
    arr<<gets.chomp.to_i
    arr
  end
  def self.get_customer_info
    arr=[]
    puts "Please, Enter Your Name"
    arr<<gets.chomp
    puts "Enter Credit Card No :"
    arr<<gets.chomp.to_i
    puts "Enter cvv"
    arr<<gets.chomp.to_i
    puts "Contact Number"
    arr<<gets.chomp.to_i
    arr
  end
end

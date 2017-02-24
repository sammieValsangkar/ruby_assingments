require_relative "product"
require_relative "shopkeeper"
require_relative "csv_operations"
require_relative "user_interactions"
require_relative "operations"
require_relative "user"

$ProductFile='product.csv'
$ProductProperties=['id','name','price','qty','company']


class Store
  def shopkeepers_dashboard
    shopkeeper =Shopkeeper.new()
    loop do
      UserInteractions.show_shopkeepers_menu
      shopkeeper_choice=gets.chomp.to_i
      case shopkeeper_choice
        when 1
              shopkeeper.add_product
        when 2
              puts "product_id :"
              shopkeeper.delete_product(gets.to_i)
        when 3
              Product.list
        when 4
              Product.search_product
        when 5
              shopkeeper.edit_product
              Product.list
        when 6
              exit
      end
    end
  end

  def users_dashboard
    user =  User.new()
    loop do
      UserInteractions.show_users_menu
      users_choice=gets.chomp.to_i
      case users_choice
        when 1
                Product.list
        when 2
                Product.search_product
        when 3
          user.purchase
        when 6
          exit
      end
    end
  end

  def launch
    UserInteractions.show_options
    loop do
      choice=gets.chomp.to_i
      case choice
        when 1
          shopkeepers_dashboard
        when 2
            users_dashboard
      end
    end
  end
end

s=Store.new
s.launch
# There should be option for exit
# What File.write(file_name, s) doin in  hash_to_csv
# No need of global variables

require_relative 'config'
require_relative 'customer'
require_relative 'shopkeeper'
class Store
  def launch
  puts USER_TYPE_OPTION.values
  choice = gets.chomp.to_i
  case choice
    when 1
      Shopkeeper.new
    when 2
      Customer.new
    else
      puts "Invalid Option"
    end
  end

end

s=Store.new
s.launch
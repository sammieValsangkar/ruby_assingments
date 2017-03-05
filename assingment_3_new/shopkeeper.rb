require_relative 'user_interaction'
require_relative 'product'

class Shopkeeper
  def initialize
    loop do
      puts SHOPKEEPERS_OPTION.values
      choice = gets.chomp.to_i
      case choice
      when 1
        add
      when 2
        remove
      when 3
        list
      when 4
        search
      when 5
        edit
      when 6
        break
      else
        puts "Invalid Option"
      end
    end
  end

  def add
    product = UserInteraction.get_product_details
    pro= Product.new(product)
    pro.save_product
  end

  def remove

  end

  def list

  end

  def search

  end

  def edit

  end
end
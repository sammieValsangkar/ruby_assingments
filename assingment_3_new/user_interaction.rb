class UserInteraction
  def self.get_product_details
    product_details = {}
    PRODUCT.drop(1).each do |key,val|
      p "Enter Product #{key.capitalize}"
      product_details[key] = gets.chomp
    end
    product_details
  end
end

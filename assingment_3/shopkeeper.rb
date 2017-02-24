require_relative "product"


class Shopkeeper < Product

  def delete_product(product_id)
    i = self.get_index_from_id(product_id.to_s)
    if i.nil?
      puts "Invalid Product Id"
    else
      CsvOperations.delete_line_by_index($ProductFile,i)
    end
  end

  def add_product
    arr=UserInteractions.getProductDetails
    Operations.save_product(arr)
  end

  def edit_product
    puts "enter product id"
    product_id=gets.chomp.to_i.to_s
    i = self.get_index_from_id(product_id)
    if i.nil?
      puts "Invalid Product Id"
    else
      CsvOperations.delete_line_by_index($ProductFile,i)
      arr=UserInteractions.getProductDetails
      Operations.save_product(arr,product_id)
    end
  end
end

class ProductAdapter
  def self.save(product_data,file_name)
    if file_name.split('.').last == "csv"
      CsvOperations.save(product_data,file_name)
      puts "product saved successfully in #{file_name}"
    end
  end
end
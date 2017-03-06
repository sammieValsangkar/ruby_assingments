require_relative 'csv_operation'

class ProductAdapter
  def self.save(product_data,file_name)
    if file_name.split('.').last == "csv"
      h={}
      h[:id] = CsvOperations.get_last_id(file_name)+1
      product_data = h.merge(product_data)
      p product_data
      CsvOperations.save(product_data,file_name)
      puts "product saved successfully in #{file_name}"
    end
  end
end
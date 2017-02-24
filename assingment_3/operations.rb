class Operations
  def self.save_product(arr,id=nil)
    if id.nil?
      arr.insert(0,Product.get_last_id+1)
    else
      arr.insert(0,id)
    end
    new_product_hash=Hash[$ProductProperties.zip(arr)]
    puts new_product_hash
    new_product_list=CsvOperations.csv_to_hash_array($ProductFile)<<new_product_hash
    CsvOperations.hash_to_csv(new_product_list,$ProductFile)
  end
  def self.delete_product_from_hash(hash_name,product_id)
    hash_name.map do |ele|
    end
    puts hash_name
  end
end

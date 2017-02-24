class Product
  def self.test
    p "still testing??? :("
  end

  def self.get_last_id
    csv = CSV.read($ProductFile, :headers=>true)
    return csv['id'].map(&:to_i).max.to_i
  end

  def self.get_index_from_id(search_id)
    ids= CSV.read($ProductFile, :headers=>true)['id']
    if ids.include?(search_id)
      ids.each_with_index do | val,index|
        if val == search_id
          return index
        end
      end
    else
      return nil
    end
  end

  def self.product_available?(arr)

  end

  def self.find(str)
    result=[]
    arr_of_arrs = CSV.read($ProductFile)
    arr_of_arrs.each_with_index do |a,i|
       if a.include?(str)
        result<< "#{i+1} => #{a}"
        end
      end
    result
  end

  def self.search_product
    puts "what are you looking for"
    str=gets.chomp
    p self.find(str)
  end

  def self.list
    puts "product list"
    puts CsvOperations.csv_to_hash_array($ProductFile)
  end
end

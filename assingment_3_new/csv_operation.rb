require "csv"

class CsvOperations

  def self.get_last_id(file_name)
    csv = CSV.read(file_name, :headers=>true)
    return csv['id'].map(&:to_i).max.to_i
  end

  def self.save(product_data,file_name)
    new_product = csv_to_hash_array(file_name)
    new_product << product_data
    hash_to_csv(new_product,file_name)
  end

private
  def CsvOperations.csv_to_hash_array(file_name)
    CSV.read(file_name, headers:true, header_converters: :symbol, converters: :all).collect do |row|
      Hash[row.collect { |c,r| [c,r] }]
    end
  end

  def CsvOperations.hash_to_csv(hash_name,file_name)
    column_names = hash_name.first.keys
    s=CSV.generate do |csv|
      csv.add_row column_names
      hash_name.each do |x|
        values = x.values
        csv.add_row values
      end
    end
    File.write(file_name, s)
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv.add_row column_names
      all.each do |foo|
        values = foo.attributes.values
        csv.add_row values
      end
    end
  end

end
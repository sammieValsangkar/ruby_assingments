require "csv"
class CsvOperations
  def self.csv_to_hash_array(file_name)
    CSV.read(file_name, headers:true, header_converters: :symbol, converters: :all).collect do |row|
      Hash[row.collect { |c,r| [c,r] }]
    end
  end
  def self.hash_to_csv(hash_name,file_name)
    column_names = hash_name.first.keys
    s=CSV.generate do |csv|
      csv << column_names
      hash_name.each do |x|
        csv << x.values
      end
    end
    File.write(file_name, s)
  end
  def self.delete_line_by_index(file_name,i)
    products=self.csv_to_hash_array(file_name)
    products.delete_at(i)
    self.hash_to_csv(products,file_name)
  end
end

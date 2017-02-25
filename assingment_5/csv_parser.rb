require "csv"
#file_name="note_books.csv"
class CsvOperations
  def self.csv_to_hash_array(file_name)
    CSV.read(file_name, headers:true,header_converters: :symbol, converters: :all).collect do |row|
      Hash[row.collect { |c,r| [c,r] }]
    end
  end
  def self.get_headers_from_csv(file_name)
    #attribs = data.first.keys
    data=CsvOperations.csv_to_hash_array(file_name)
    attribs = data.first.keys
  end
end

class CsvParser
  attr_accessor :csv_array
  def initialize(file_name)
    class_name=generate_class_name(file_name)
    generate_class(file_name,class_name)
    csv_array = generate_array(class_name,file_name)
  end
  def generate_class_name(file_name)
    file_name.split(".")[0].split("_").map(&:capitalize).join.gsub(/s$/,"")
  end

  def generate_class(file_name,class_name)
  Object.const_set(class_name, Class.new do |attribs|
    headers=CsvOperations.get_headers_from_csv(file_name)
    headers.each { |heads| attr_accessor heads }
    @@attribs = headers.map(&:to_s)
    #class_variable_set(:@@attribs, headers.map(&:to_s))
      def initialize(a)
        p @@attribs
        a.each_with_index { |val,i| send("#{@@attribs[i]}=",val)  }
      end
    end)
  end
  def generate_array(class_name,file_name)
    hash_array=CsvOperations.csv_to_hash_array(file_name)
    obj_array = hash_array.each do |row|
    Object.const_get(class_name)
    end
  end
end

pcsv = CsvParser.new("note_books.csv")
pcsv
require "csv"
#file_name="note_books.csv"
class CsvOperations
  def self.csv_to_hash_array(file_name)
    CSV.read(file_name, headers:true,header_converters: :symbol, converters: :all).collect do |row|
      Hash[row.collect { |c,r| [c,r] }]
    end
  end
  def self.get_headers_from_csv(file_name)
     CSV.table(file_name).headers
  end
end

class CsvParser
  attr_accessor :csv_array
  csv_array=[]
  def initialize(file_name)
    class_name=generate_class_name(file_name)
    generate_class(file_name,class_name)
    @csv_array = generate_array(class_name,file_name)
    @csv_array
  end

  def generate_class_name(file_name)
    file_name.split("/").last.split(".")[0].split("_").map(&:capitalize).join.gsub(/s$/,"")
  end

  def generate_class(file_name,class_name)
    attrs = CsvOperations.get_headers_from_csv(file_name)
    @clazz = Object.const_set class_name, Class.new
    @clazz.class_eval do
      attr_accessor *attrs
      #headers=CsvOperations.get_headers_from_csv(file_name)
      #headers.each { |heads| attr_accessor heads }
      #@@attribs = headers.map(&:to_s)
      #class_variable_set(:@@attribs, headers.map(&:to_s))
      def initialize(a)
        a.each { |attr,val| send("#{attr}=",val)  }
      end
    end
  end

  def generate_array(class_name,file_name)
    arr=[]
    hash_array=CsvOperations.csv_to_hash_array(file_name)
    obj_array = hash_array.each do |row|
      klass = Object.const_get(class_name)
      obj=  klass.new(row)
      arr<<obj
    end
    arr
  end
end

pcsv = CsvParser.new("/var/www/assingments/ruby_assingments/assingment_5/note_books.csv")
p pcsv.csv_array.last.id

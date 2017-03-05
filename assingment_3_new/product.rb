require_relative 'product_adapter'

class Product
  def initialize(args)
    args.each do |k,v|
      instance_variable_set("@#{k}", v) unless v.nil?
    end
  end

  def save_product
    ProductAdapter.save(to_hash,"inventory.csv")
  end

  def to_hash
    instance_variables.map do |var|
      [var[1..-1].to_sym, instance_variable_get(var)]
    end.to_h
  end
end
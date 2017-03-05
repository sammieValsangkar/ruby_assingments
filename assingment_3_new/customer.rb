class Customer
  def initialize
    loop do
      puts CUSTOMERS_OPTIONS.values
      choice = gets.chomp.to_i
      case choice
      when 1
        list
      when 2
        search
      when 3
        buy
      when 4
        break
      else
        puts "Invalid Option"
      end
    end
  end

  def list

  end

  def search

  end

  def buy

  end


end





def compose(n,squared = Proc.new { |n| n * n } ,doubled = Proc.new { |n| n * 2 } )
  n=doubled.call(n)
  squared.call(n)
end

compose(5)


lambo = lambda { |first_name,second_name | "#{first_name} #{second_name}" }
 lambo.call("john","doe")

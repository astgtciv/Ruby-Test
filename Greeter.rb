class Greeter
  attr_accessor :name
def initialize(name="max") 
  @name = name
end  
def greet
  puts "Hi, #{@name.capitalize}"
end
end

class MegaGreeter
  attr_accessor :names
  
  def initialize(names= "World")
    @names = names
  end
  
  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      # has method each, must be a list, iterate
      @names.each do |name|
        puts "Hello back #{name}!"
      end
    else 
      puts "Hello #{@names}!" # assume a string
    end
  end
  
  def say_bye
    if @names.nil?
      snames = "..."
    elsif @names.respond_to?("join")
      snames = @names.join(", ");
    else 
      snames = @names
    end
    puts "Goodbye, #{snames}! Come back soon!"
  end
end
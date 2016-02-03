module Destructable
    def destroy(anyobject)
        puts "I destroy you" 
    end
end
class User
    
    include Destructable
    attr_accessor :name, :email
    def initialize(name, email)
        @name = name
        @email = email
    end
    
    def run
        puts "I'm running"
    end
    
    def get_name
        @name
    end
    
    def set_name(name)
        @name = name
    end
    
    def self.identify_yourself
        puts "Class Method"
    end
end



class Buyer < User
    def run
        puts "I do not run, I am a buyer"
    end
end

class Seller < User
end

class Admin < User
end
user = User.new("Nata", "n@gmail.com")

user.run
user.name = "Natasa"
puts user.name
puts user.email

buyer = Buyer.new("N", "n@gm.com")
buyer.run
seller = Seller.new("Seller", "s@gm.com")

puts Buyer.ancestors

User.identify_yourself

user.destroy("myname")



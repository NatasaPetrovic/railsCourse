cities = {"Beograd" => "11000", "Novi Sad" => "21000", "Zemun" => "11080", "Apatin" => "25260", "Backa Topola" => "24300"}

def display_all(cities)
    cities.each {|k, v| puts k}
end


def area_code(cities, city)
    
    puts cities[city]
end

loop do
    puts "Do you want a city name?(Y/N)"
    answer = gets.chomp
    if answer != "Y"
        break
    else
        display_all(cities)
        puts "Choose city"
        city = gets.chomp
        if cities.include?(city)
            area_code(cities,city)
        else
            puts "There is no #{city} in the book"
        end
    end
end

    






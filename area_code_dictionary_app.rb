dial_book = {
    "New York"      => "212",
    "New Brunswick" => "732",
    "Edison"        => "908",
    "Plainsboro"    => "609",
    "San Francisco" => "301",
    "Miami"         => "305",
    "Palo Alto"     => "650",
    "Evanston"      => "847",
    "Orlando"       => "407",
    "Lancaster"     => "717"
}

def get_city_names(somehash)
    somehash.keys
end

def get_area_code(somehash,key)
    somehash[key]
end


loop do
    puts "Do you want to look up a city area code based on its name?"
    puts "Press 'Y' for yes and 'N' for no"
    answer=gets.chomp
    break if answer !="y" && answer !="Y" 
    puts "Type in the city name whose area code you want to look up."
    puts get_city_names(dial_book)
    puts "Enter your selection"
    prompt=gets.chomp
    if dial_book.include?(prompt)
        puts "The area code for #{prompt.upcase} is #{get_area_code(dial_book,prompt)}"    
    else    
        puts "Invalid city name"
        puts "I'm sorry I don't have #{prompt.upcase} in my records"
    end
end
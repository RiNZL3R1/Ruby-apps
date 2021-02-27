users=[
   { username:"aybars", password:"pswd1"},
   { username:"anil", password:"pswd2" },
   { username:"ahmet", password:"pswd3"},
   { username:"apo", password:"pswd4"  },
   { username:"kadir", password:"pswd5"},
   { username:"tommy", password:"pswd6"},
   { username:"niko", password:"pswd7" },
   { username:"aybo", password:"pswd8" }
]
20.times{ print "-"}
puts
puts "hesap dogrulamaya hosgeldiniz"
20.times{ print "-"}
puts 
input=""
attempts=0

while input != "q"
    attempts+=1
 if attempts>3
    puts "girilen bilgiler yanlis sonra dene"
 break;
    
end
print "username:"
username_input=gets.chomp
print "password:"
password_input=gets.chomp

temp_hash={username:username_input,password:password_input}

if users.include?(temp_hash)
   20.times{ print "-"}
   puts
   puts "hosgeldin #{username_input.upcase}"
   20.times{ print "-"}
   puts
else
   20.times{ print "-"}
   puts
   puts "bilgiler eslesmiyor"
   20.times{ print "-"}
   puts
end

puts "Çıkmak için q tuşuna veya devam etmek için başka herhangi bir tuşa basın"
  input = gets.chomp.downcase
end

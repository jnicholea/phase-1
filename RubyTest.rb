puts "Enter your name:"
name = gets.chomp
puts "Your name is #{name}!"
name.reverse!
puts "Your name backwards is #{name}"
name.upcase!
puts "Your name backwards and upcase is #{name}!"
puts "Enter your last name:"
lastname = gets.chomp
name.reverse!
name.capitalize!
puts "Your name is #{name} #{lastname}"
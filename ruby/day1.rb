puts "Hello World"

puts "Hello, Ruby".index("Ruby")

10.times { puts "Duffman" }

10.times { |i| j = i + 1; puts "This is sentence #{j}" }

x = rand(100)
puts "Guess the number:"
y = gets.to_i

case y <=> x
when -1
  puts "Too low! The number was #{x}"
when 0
  puts "Right!"
when 1
  puts "Too high! The number was #{x}"
end





def addition(num1,num2)
  puts "You choose : Addition"
  puts "#{num1} + #{num2} is #{num1+num2}"
end

def subtract(num1,num2)
  puts "You choose : Subtraction"
  puts "#{num1} - #{num2} is #{num1-num2}"
end

def multiply(num1,num2)
  puts "You choose : Multiplication"
  puts "#{num1} * #{num2} is #{num1*num2}"
end

def divide(num1, num2)
  puts "You choose : Division"
  if num2 == 0
    puts "Cannot divide by zero!"
  else
    puts "#{num1} / #{num2} is #{num1.to_f / num2}"
  end
end

loop do
print "Enter 1st number:" 
num1 = gets.chomp.to_i
print "Enter 2nd number:"
num2 = gets.chomp.to_i


puts "Select Operation:"
puts "1. Addition"
puts "2. Subtraction"
puts "3. Multiplication"
puts "4. Division"
puts "5. Exit"
print "Choose a number: "

choices = gets.chomp.to_i


case choices
when 1
  addition(num1,num2)
when 2
  subtract(num1,num2)
when 3
  multiply(num1,num2)
when 4
  divide(num1,num2)
else
  puts "\nInvalid choice, try again.\n"  # handle invalid input
end
end



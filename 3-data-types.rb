# -------------------------------
# Ruby Data Types Example
# -------------------------------

name = "Mike"   # String → text data
age = 75        # Integer → whole numbers
gpa = 3.2       # Float → decimal numbers
is_graduated = true  # Boolean → true or false
nicknames = ["Mikey", "Mikee"] # Array → ordered list of values
info = { school: "XYZ University", year: 2025 } # Hash → key-value pairs
nothing = nil   # NilClass → represents "nothing" or "no value"

# -------------------------------
# Using string interpolation to display variables
# -------------------------------
puts "His name is #{name}"       # prints string
puts "and his age is #{age}"     # prints integer
puts "his gpa is #{gpa}"         # prints float
puts "Graduated? #{is_graduated}" # prints boolean
puts "Nicknames: #{nicknames}"    # prints array
puts "School info: #{info}"       # prints hash
puts "Nothing: #{nothing}"        # prints nil

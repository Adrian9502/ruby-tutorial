# -------------------------------
# Ruby naming convention: use snake_case for variables
# -------------------------------
character_name = "Juan"   # variable to store the character's name
character_age = 23        # variable to store the character's age (integer)

# -------------------------------
# Using string interpolation to combine text and variables
# -------------------------------
puts "There once was a man named #{character_name}"    # prints the name
puts "He was #{character_age} years old."            # prints the age
puts "He really liked the name #{character_name}"    # prints name again
puts "But didn't like being #{character_age}"        # prints age again

# -------------------------------
# Notes:
# - Interpolation uses #{variable} inside double quotes
# - Single quotes ' ' do NOT allow interpolation
# - Avoid concatenating string + integer directly; use to_s or interpolation
# -------------------------------

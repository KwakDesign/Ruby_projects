# Calculate Method
def calculate(first_int, operator, second_int)
  # use conditional to verify which operator is passed then invoke the arithmetic operator that was passed in.
  if operator == '+'
    first_int + second_int
  elsif operator == '-'
    first_int - second_int
  elsif operator == '*'
    first_int * second_int
  elsif operator == '/'
    first_int / second_int
  end
end

# UI Code
# Store calculations into a hash to be outputted after the user has finished their calculations
stored_calculations = {}
calculate_input = ''
# Ask the user to enter math calculations
while calculate_input != 'done'
  puts "Enter math calculations using the +, -, *, / operators. Be sure to put a space between each input. ex. '4 + 5', '2 * 1', etc.(type 'done' when finished)"
  calculate_input = gets.chomp.downcase
  # If the user enters done then break
  if calculate_input == 'done'
    break
  else
  # Otherwise split the input into the separate variables which will be passed into the calculate method.
    first_int = calculate_input.split()[0].to_i
    operator = calculate_input.split()[1]
    second_int = calculate_input.split()[2].to_i
    p calculate(first_int, operator, second_int)

    # Store the calculation and it's output into the hash
    stored_calculations[calculate_input] = calculate(first_int, operator, second_int)
  end
end
# Output number of times the calculation was performed.
puts "#{stored_calculations.length} calculation(s) performed:"
# Output the stored calculations and its outputs.
stored_calculations.each do |calculation, answer|
  puts "#{calculation} = #{answer}"
end
# string_calculator.rb
require_relative 'string_calculator/calculator'

input = '1,2,3'

result = StringCalculator::Calculator.add(input)

puts "Result: #{result}"

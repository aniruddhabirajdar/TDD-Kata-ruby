# string_calculator.rb
require_relative 'string_calculator/calculator'

input = "//*\n4*2"

result = StringCalculator::Calculator.add(input)

puts "Result: #{result}"

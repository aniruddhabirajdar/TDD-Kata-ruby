require_relative './lib/input_paraser'
class StringCalculator
  def self.add(_input)
    return 0 if _input.empty?

    delimiter, numbers = InputParser.extract_delimiters_and_numbers(_input)
    nums = InputParser.extract_numbers(delimiter, numbers)
    # nums = numbers.

    nums.sum
  end
end

# StringCalculator.add('test')

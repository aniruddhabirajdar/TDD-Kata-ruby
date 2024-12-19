require_relative './lib/input_paraser'
require_relative './lib/validate'

class StringCalculator
  def self.add(_input)
    return 0 if _input.empty?

    delimiter, numbers = InputParser.extract_delimiters_and_numbers(_input)
    nums = InputParser.extract_numbers(delimiter, numbers)
    StringCalculator.is_valid?(nums)

    nums.sum
  end

  def self.is_valid?(nums)
    Validate.negative_present?(nums)
  end
end

# StringCalculator.add('test')

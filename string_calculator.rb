require_relative './lib/input_paraser'
class StringCalculator
  def self.add(_input)
    parsed_input = InputParser.extract_numbers(_input)
    return 0 if _input.empty?
    

    parsed_input.sum
  end
end

# StringCalculator.add('test')

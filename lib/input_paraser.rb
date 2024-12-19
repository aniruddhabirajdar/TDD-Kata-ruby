class InputParser
  def self.extract_numbers(input)
    input.split(',').map(&:to_i)
  end
end

class InputParser
  def self.extract_numbers(input)
    numbers = input.gsub("\n", ',').split(',')
    raise ArgumentError, 'Invalid input' if input.match(/(^|\s*)\n\s*,|,\n\s*$/)

    numbers.map(&:to_i)
  end
end

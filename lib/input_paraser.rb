class InputParser
  def self.extract_numbers(delimiter, input)
    numbers = input.split(Regexp.union(delimiter))
    numbers.map(&:to_i)
  end

  def self.extract_delimiters_and_numbers(input)
    if input.start_with?('//')
      match = input.match('\/\/(.)\\n(.*)')
      delimiters = [match[1]]
      [delimiters, match[2]]
    else
      [[',', "\n"], input]
    end
  end
end

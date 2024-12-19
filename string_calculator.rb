class StringCalculator
  def self.add(_input)
    parsed_input = _input
    return 0 if parsed_input.empty?
  end
end

StringCalculator.add('test')

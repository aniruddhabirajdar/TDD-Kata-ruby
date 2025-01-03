module Stages
  class DynamicAggregator
    DELIMITER_OPERATIONS = {
      '*' => ->(nums) { nums.reduce(1, :*) },
      '+' => ->(nums) { nums.reduce(0, :+) }
    }
    def call(input)
      delimiters = input[:delimiters]
      aggregator =
        if delimiters.size == 1 && DELIMITER_OPERATIONS.key?(delimiters.first)
          DELIMITER_OPERATIONS[delimiters.first]
        else
          ->(nums) { nums.sum }
        end
      input.merge(aggregator: aggregator)
    end
  end
end

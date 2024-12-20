module Stages
  class LargeNumberFilter
    LargeNumberNumber = [1000]
    def call(input)
      filtered_numbers = input[:numbers].reject { |n| n > 1000 }
      input.merge(numbers: filtered_numbers)
    end
  end
end

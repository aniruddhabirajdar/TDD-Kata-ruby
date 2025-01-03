module Stages
  class Summer
    def call(input)
      # input[:numbers].sum
      aggregator = input[:aggregator] || ->(nums) { nums.sum }
      aggregator.call(input[:numbers])
    end
  end
end

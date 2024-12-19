module Stages
  class NegativeValidator
    def call(input)
      negatives = input[:numbers].select { |n| n < 0 }
      raise "Negatives not allowed: #{negatives.join(', ')}" if negatives.any?

      input
    end
  end
end

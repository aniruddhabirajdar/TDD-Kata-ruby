module Stages
  class Splitter
    def call(input)
      numbers = input[:numbers].split(Regexp.union(input[:delimiters])).map(&:to_i)
      input.merge(numbers: numbers)
    end
  end
end

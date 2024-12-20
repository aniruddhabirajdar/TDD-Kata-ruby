module Stages
  class Splitter
    def call(input)
      numbers = input[:numbers].split(Regexp.union(input[:delimiters])).map(&:to_i)
      raise ArgumentError, 'Invalid input' if input[:numbers].split(Regexp.union(input[:delimiters]), -1).any? do |n|
                                                n.empty?
                                              end

      input.merge(numbers: numbers)
    end
  end
end

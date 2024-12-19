module Stages
  class DelimiterExtractor
    DELIMITER_REGEX = '\/\/(.)\\n(.*)'
    def call(input)
      if input.start_with?('//')
        match = input.match(DELIMITER_REGEX)
        delimiters = [match[1]]
        { delimiters: delimiters, numbers: match[2] }
      else
        { delimiters: [',', "\n"], numbers: input }
      end
    end
  end
end

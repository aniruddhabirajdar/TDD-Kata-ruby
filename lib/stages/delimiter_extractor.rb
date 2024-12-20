module Stages
  class DelimiterExtractor
    DELIMITER_REGEX = '\/\/(\[.*?\]|.)\\n(.*)'
    def call(input)
      if input.start_with?('//')
        match = input.match(DELIMITER_REGEX)
        delimiters = DelimiterExtractor.parse_delimiters(match[1])
        { delimiters: delimiters, numbers: match[2] }
      else
        { delimiters: [',', "\n"], numbers: input }
      end
    end

    def self.parse_delimiters(delimiter_section)
      if delimiter_section.start_with?('[')
        delimiter_section.scan(/\[(.*?)\]/).flatten
      else
        [delimiter_section]
      end
    end
  end
end

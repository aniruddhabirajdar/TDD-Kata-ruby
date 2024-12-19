require_relative './lib/stages/delimiter_extractor'
require_relative './lib/stages/negative_validator'
require_relative  './lib/stages/splitter'
require_relative  './lib/stages/summer'

class StringCalculator
  def self.add(_input)
    pipline = [
      Stages::DelimiterExtractor.new,
      Stages::Splitter.new,
      Stages::NegativeValidator.new,
      Stages::Summer.new
    ]
    pipline.reduce(_input) { |data, stage| stage.call(data) }
  end
end

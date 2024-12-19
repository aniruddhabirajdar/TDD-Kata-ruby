require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'for an empty string it will return 0' do
      expect(StringCalculator.add('')).to eq(0)
    end

    it 'two numbers, separated by commas, and will return their sum' do
      expect(StringCalculator.add('1,2')).to eq(3)
    end
  end
end

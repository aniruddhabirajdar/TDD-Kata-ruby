require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'for an empty string it will return 0' do
      expect(StringCalculator.add('')).to eq(0)
    end
  end
end

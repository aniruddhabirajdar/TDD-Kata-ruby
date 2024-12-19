require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'for an empty string it will return 0' do
      expect(StringCalculator.add('')).to eq(0)
    end

    it 'two numbers, separated by commas, and will return their sum' do
      expect(StringCalculator.add('1,2')).to eq(3)
    end

    it 'handle an unknown amount of numbers' do
      # can create Random string of random number to test this case , That dosen't make sent only cosnume the memory and power so test this using 100 list of numbers
      random_numbers = Array.new(100) { rand(1..1000) }
      sum_of_numbers = random_numbers.sum
      random_numbers_string = random_numbers.join(',')
      expect(StringCalculator.add(random_numbers_string)).to eq(sum_of_numbers)
    end

    # Also controlled scenarios
    it 'handle an unknown amount of numbers (controlled scenarios)' do
      expect(StringCalculator.add('1,2,3,4')).to eq(10)
    end

    it 'handle new lines between numbers (instead of commas)' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it 'the following input is NOT ok: “[number],\n”' do
      expect { StringCalculator.add("2\n1,\n\n") }.to raise_error('Invalid input')
    end
  end
end

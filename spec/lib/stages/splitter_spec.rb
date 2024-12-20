require 'rspec'
require_relative '../../../lib/stages/splitter'

RSpec.describe Stages::Splitter do
  subject(:splitter) { described_class.new }

  describe '#call' do
    context 'when input is valid' do
      let(:input) { { numbers: '1,2,3', delimiters: [','] } }

      it 'splits  using the delimiters and converts to integers' do
        result = splitter.call(input)
        expect(result[:numbers]).to eq([1, 2, 3])
      end
    end

    context ' has custom delimiters' do
      let(:input) { { numbers: '1;2|3', delimiters: [';', '|'] } }

      it 'splits  with multiple delimiters' do
        result = splitter.call(input)
        expect(result[:numbers]).to eq([1, 2, 3])
      end
    end

    context 'Error:  input has empty sections between delimiters' do
      let(:input) { { numbers: '1,,2', delimiters: [','] } }

      it 'raises an ArgumentError' do
        expect { splitter.call(input) }.to raise_error(ArgumentError, 'Invalid input')
      end
    end

    context 'has no numbers then get blank array of numbers' do
      let(:input) { { numbers: '', delimiters: [','] } }
      it 'raises an ArgumentError' do
        result = splitter.call(input)
        expect(result[:numbers]).to be_empty
      end
    end
  end
end

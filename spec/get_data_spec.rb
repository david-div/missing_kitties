require 'get_data'

RSpec.describe GetData do
  subject(:get_data) { described_class.new }

  let (:dir) do
    %w[
      forward
      right
      forward
      forward
      forward
      left
      forward
      forward
      left
      right
      forward
      right
      forward
      forward
      right
      forward
      forward
      left
    ]
  end

  describe '#get_data' do
    it 'should get the directions back from the API' do
      expect(get_data.directions).not_to eq(nil)
    end
  end

  describe '#parse_data' do
    it 'should output the actually array' do
      expect(get_data.parse_data).to eq(dir)
    end
  end
end

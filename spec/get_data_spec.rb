require 'get_data'

RSpec.describe GetData do
  subject(:get_data) { described_class.new }

  context '#directions' do
    it 'should get the directions back from the API' do
      expect(get_data.directions).not_to eq(nil)
    end

    it 'should output an array' do
      expect(get_data.directions).to be_an_instance_of(Array)
    end
  end
end

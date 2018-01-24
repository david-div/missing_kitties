require 'get_data'

RSpec.describe GetData do

  subject(:get_data) { described_class.new }

  context '#directions' do
    it 'should get the directions back from the API' do
      expect(get_data.directions).not_to eq nil
    end
  end

end

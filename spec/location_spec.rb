require 'location'

RSpec.describe Location do
  subject(:location) { described_class.new }

  context '#initalize' do
    it 'should start with dir 0' do
      expect(location.curr_dir).to eq(0)
    end

    it 'should start with dir dx pos 0' do
      expect(location.dx).to eq(0)
    end

    it 'should start with dir dy pos 0' do
      expect(location.dy).to eq(0)
    end


  end
end

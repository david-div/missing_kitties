require 'location'

RSpec.describe Location do
  let (:array) { %w[forward right] }
  subject(:location) { described_class.new(array) }

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

    it 'should should show the array' do
      expect(location.directions).to eq(array)
    end
  end

  context '#update_curr_dir' do
    it 'should update the curr direction' do
      location.update_curr_dir
      expect(location.curr_dir).to eq(90)
    end
  end

end

require 'location'

RSpec.describe Location do
  let (:array) { [] }
  subject(:location) { described_class.new(array) }

  describe '#initalize' do
    it 'should start with dir 0' do
      expect(location.curr_dir).to eq(0)
    end

    it 'should start with dir dx pos 0' do
      expect(location.dx).to eq(0)
    end

    it 'should start with dir dy pos 0' do
      expect(location.dy).to eq(0)
    end

    it 'should show the array' do
      expect(location.directions).to eq(array)
    end
  end

  describe '#update_curr_dir' do
    context 'go right only' do
      let (:array) { %w[right] }

      it 'should update the curr direction' do
        location.update_curr_dir
        expect(location.curr_dir).to eq(90)
      end
    end

    context 'go left only' do
      let (:array) { %w[left] }

      it 'should update the curr direction' do
        location.update_curr_dir
        expect(location.curr_dir).to eq(270)
      end
    end

    context 'go right and left' do
      let (:array) { %w[right left] }

      it 'should update the curr direction' do
        location.update_curr_dir
        expect(location.curr_dir).to eq(0)
      end
    end
  end

  describe '#degree_update' do
    context 'doing a full rotation' do
      let (:array) { %w[right right right right] }

      it 'should show the curr direction is 0' do
        location.update_curr_dir
        expect(location.curr_dir).to eq(0)
      end
    end

    context 'doing a full rotation + 1' do
      let (:array) { %w[right right right right right] }

      it 'should show the curr direction is 90' do
        location.update_curr_dir
        expect(location.curr_dir).to eq(90)
      end
    end

    context 'doing left when facing north' do
      let (:array) { %w[left] }

      it 'should show 270 degrees' do
        location.update_curr_dir
        expect(location.curr_dir).to eq(270)
      end

    end
  end
end

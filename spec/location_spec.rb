require 'location'

RSpec.describe Location do
  let (:array) { [] }
  subject(:location) { described_class.new(array) }

  describe '#initalize' do

    it 'should start with dir dx pos 0' do
      expect(location.dx).to eq(0)
    end

    it 'should start with dir dy pos 0' do
      expect(location.dy).to eq(0)
    end

  end

  describe '#update_location' do
    context 'going forward' do
      let (:array) do
        [["forward", 0]]
      end

      it 'should update the dy coordinate by 1' do
        location.update_coordinates
        expect(location.dy).to eq(1)
      end
    end

    context 'going 90 degrees then forward' do
      let (:array) do
        [["forward", 90]]
      end

      it 'should update the dx coordinate by 1' do
        location.update_coordinates
        expect(location.dx).to eq(1)
      end
    end

    context 'going -90 degrees then forward' do
      let (:array) do
        [["forward", 270]]
      end

      it 'should update the dx coordinate by -1' do
        location.update_coordinates
        expect(location.dx).to eq(-1)
      end
    end

    context 'going to 180 degrees then forward' do
      let (:array) do
        [["forward", 180]]
      end

      it 'should update the dy coordinate by -1' do
        location.update_coordinates
        expect(location.dy).to eq(-1)
      end
    end

    describe '#return_coordinates' do

      context 'It should update the coordinates' do
        let (:array) do
          [["forward", 0]]
        end

        it 'should show [0, 1]' do
          expect(location.return_coordinates).to eq([0, 1])
        end
      end
    end


  end
end

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

  describe '#dir_with_degrees' do
    context 'having both dir and degrees' do
      let (:array) do
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
        ]
      end

      let (:output) do
        [
          ['forward', 0],
          ['right', 90],
          ['forward', 90],
          ['forward', 90],
          ['forward', 90],
          ['left', 0],
          ['forward', 0],
          ['forward', 0],
          ['left', 270]
        ]
      end

      it 'should show the correct degress and dir' do
        location.update_curr_dir
        expect(location.dir_with_degrees).to eq(output)
      end
    end
  end

  describe '#update_location' do
    context 'going forward' do
      let (:array) do
        %w[forward]
      end

      it 'should update the dy coordinate by 1' do
        location.update_curr_dir
        location.update_coordinates
        expect(location.dy).to eq(1)
      end
    end

    context 'going 90 degrees then forward' do
      let (:array) do
        %w[right forward]
      end

      it 'should update the dx coordinate by 1' do
        location.update_curr_dir
        location.update_coordinates
        expect(location.dx).to eq(1)
      end
    end

    context 'going -90 degrees then forward' do
      let (:array) do
        %w[left forward]
      end

      it 'should update the dx coordinate by -1' do
        location.update_curr_dir
        p location.update_coordinates
        expect(location.dx).to eq(-1)
      end
    end

    context 'going to 180 degrees then forward' do
      let (:array) do
        %w[right right forward]
      end

      it 'should update the dy coordinate by -1' do
        location.update_curr_dir
        p location.update_coordinates
        expect(location.dy).to eq(-1)
      end
    end
  end
end

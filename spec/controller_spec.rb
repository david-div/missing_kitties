require 'controller'

RSpec.describe Controller do
  subject(:controller) { described_class.new(data) }

  let(:data) { double :data }

  let(:array) do
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

  describe '#initialize' do
    xit 'data should be an array' do
      allow(data).to receive(:directions) { array }
      expect(controller.data).to be_an_instance_of(Array)
    end
  end
end

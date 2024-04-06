require 'spec_helper'
require './lib/board'

RSpec.describe 'TTT_Board' do
  context 'when asked for a generic array of spots' do
    it 'returns the correct output' do
      expect(Board.new.spots).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
  end
end

require 'spec_helper'
require './lib/player'

RSpec.describe 'TTT_Player' do
  context 'when asked for the name of a player' do
    it 'returns the correct output' do
      expect(Player.new('Steve', 'O').name).to eq('Steve')
    end
  end

  context 'when asked for the symbol assigned to a player' do
    it 'returns the correct output' do
      expect(Player.new('Steve', 'O').symbol).to eq('O')
    end
  end
end

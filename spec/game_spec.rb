require 'spec_helper'
require './lib/game'
require './lib/player'

RSpec.describe 'TTT_Game' do
  context 'when asked for the default turns_completed variable' do
    it 'returns the correct output' do
      expect(Game.new.turns_completed).to eq(0)
    end
  end
end

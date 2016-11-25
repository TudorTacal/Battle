require 'game'

describe Game do

  subject(:game) { described_class.new(player, player_2) }
  let(:player) { double :player }
  let(:player_2) { double :player_2 }

  context "when attacking another player" do

    it { is_expected.to respond_to(:attack).with(1).argument }

    it "inflicts damage on the other player" do
      expect(player_2).to receive(:attacked)
      game.attack(player_2)
    end

  end
end

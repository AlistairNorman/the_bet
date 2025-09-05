require 'rails_helper'

RSpec.describe DollarCalculator do
  describe ".compute" do
    subject { described_class.compute(outcome, player) }

    let(:outcome) {
      build :outcome,
        jardo_goals: 3,
        angry_firsts: 1,
        angry_seconds: 2,
        total_gnarwhal_goals: 6,
        win: true,
        angry_position: "D",
        jardo_position: "RW"
    }

    context "when player is Jardo" do
      let(:player) { "jardo" }

      it "calculates the some random dollar value" do
        expect(subject).to eq 19.35
      end
    end

    context "when player is Angry" do
      let(:player) { "angry" }

      it "calculates the some random dollar value" do
        expect(subject).to eq 5.98
      end
    end
  end
end

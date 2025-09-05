require 'rails_helper'

RSpec.describe DollarCalculator do
  describe ".compute" do
    subject { described_class.compute(outcome, player) }

    let(:outcome) {
      build :outcome,
        jardo_goals: 3,
        angry_firsts: 1,
        angry_seconds: 2,
        win: true,
        angry_position: "LW",
        jardo_position: "D"
    }

    context "when player is Jardo" do
      let(:player) { "jardo" }

      it "calculates the some random dollar value" do
        expect(subject).to eq 7.74
      end
    end

    context "when player is Angry" do
      let(:player) { "angry" }

      it "calculates the some random dollar value" do
        expect(subject).to eq 3.24
      end
    end
  end
end

require 'rails_helper'

RSpec.describe OutcomesController, type: :request do
  let(:game) { create :game }

  describe "GET #new" do
    subject { get "/games/#{game.id}/outcomes/new" }

    it "has a form" do
      subject
      expect(response.body).to include("Jardo goals")
    end
  end

  describe "POST #create" do
    subject {
      post "/games/#{game.id}/outcomes",
      params: {
        outcome: {
          jardo_goals: 2,
          angry_goals: 1,
          win: false
        }
      }
    }

    it "creates an outcome" do
      expect { subject }
        .to change { Outcome.count }
        .from(0)
        .to(1)

      expect(Outcome.last)
        .to have_attributes(
          jardo_goals: 2,
          jardo_firsts: 0,
          angry_goals: 1,
          win: false
        )

      expect(response).to redirect_to(games_path)
    end
  end
end

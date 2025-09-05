require 'rails_helper'

RSpec.describe GamesController, type: :request do
  describe "GET #index" do
    subject { get "/games" }

    before do
      create :game, opponent: "Narwhalers"
    end

    it "displays the game" do
      subject
      expect(response).to have_http_status(:ok)
      expect(response.body).to include("Narwhalers")
    end
  end

  describe "GET #new" do
    subject { get "/games/new" }

    it "has a form" do
      subject
      expect(response.body).to include("Opponent")
    end
  end

  describe "POST #create" do
    subject { post "/games", params: { game: { opponent: "Narwhalers", date: Date.tomorrow } } }

    it "creates a game" do
      expect { subject }
        .to change { Game.count }
        .from(0)
        .to(1)

      expect(response).to redirect_to(games_path)
    end
  end
end

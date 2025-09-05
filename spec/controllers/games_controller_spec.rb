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
end

class GamesController < ApplicationController
  def index
  end

  def new
    @game = Game.new
  end

  def create
    Game.create!(game_params)
    redirect_to games_path
  end

  private

  def game_params
    params.require(:game).permit(:opponent, :date)
  end
end

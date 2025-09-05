class OutcomesController < ApplicationController
  def new
    @outcome = game.outcome || game.build_outcome
  end

  def create
    outcome = game.outcome || game.build_outcome
    outcome.update!(outcome_params)

    redirect_to games_path
  end

  private

  def game
    @game ||= Game.find(params[:game_id])
  end

  def outcome_params
    params
      .require(:outcome)
      .permit(:jardo_goals, :jardo_firsts, :jardo_seconds, :jardo_ppp, :jardo_shp, :angry_goals, :angry_firsts, :angry_seconds, :angry_ppp, :angry_shp, :win, :jardo_position, :angry_position, :total_gnarwhal_goals)
  end
end

class AddOutcomeToGames < ActiveRecord::Migration[8.0]
  def change
    add_reference :games, :outcome, foreign_key: true
  end
end

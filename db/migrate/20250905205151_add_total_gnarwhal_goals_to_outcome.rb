class AddTotalGnarwhalGoalsToOutcome < ActiveRecord::Migration[8.0]
  def change
    add_column :outcomes, :total_gnarwhal_goals, :integer, null: false, default: 0
  end
end

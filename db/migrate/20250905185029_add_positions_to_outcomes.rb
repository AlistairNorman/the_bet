class AddPositionsToOutcomes < ActiveRecord::Migration[6.1]
  def change
    add_column :outcomes, :jardo_position, :string, null: false, default: "RW"
    add_column :outcomes, :angry_position, :string, null: false, default: "D"
  end
end

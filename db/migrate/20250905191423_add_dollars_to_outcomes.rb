class AddDollarsToOutcomes < ActiveRecord::Migration[8.0]
  def change
    add_column :outcomes, :angry_dollars, :float, null: false
    add_column :outcomes, :jardo_dollars, :float, null: false
  end
end

class CreateOutcomes < ActiveRecord::Migration[8.0]
  def change
    create_table :outcomes do |t|
      t.integer :jardo_goals, null: false, default: 0
      t.integer :jardo_firsts, null: false, default: 0
      t.integer :jardo_seconds, null: false, default: 0
      t.integer :jardo_ppp, null: false, default: 0
      t.integer :jardo_shp, null: false, default: 0
      t.integer :angry_goals, null: false, default: 0
      t.integer :angry_firsts, null: false, default: 0
      t.integer :angry_seconds, null: false, default: 0
      t.integer :angry_ppp, null: false, default: 0
      t.integer :angry_shp, null: false, default: 0
      t.boolean :win, null: false, default: true

      t.timestamps
    end
  end
end

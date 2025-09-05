class CreateGames < ActiveRecord::Migration[8.0]
  def change
    create_table :games do |t|
      t.string :opponent, null: false
      t.date :date, null: false

      t.timestamps
    end
  end
end

class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :riddle, null: false

      t.references :winner, index: true, foreign_key: true
      t.references :game, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

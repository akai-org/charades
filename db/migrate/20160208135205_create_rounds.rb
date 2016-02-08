class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :riddle, null: false

      t.references :category, index: true, foreign_key: true
      t.references :winner, index: true, foreign_key: true
      t.references :game, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end

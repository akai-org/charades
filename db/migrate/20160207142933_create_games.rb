class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :duration, null: false
      t.integer :round_count, null: false
      t.integer :status, null: false, default: 0

      t.timestamps null: false
    end
  end
end

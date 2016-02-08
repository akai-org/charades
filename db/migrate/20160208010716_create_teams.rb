class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.string :password_digest

      t.references :game, null: false

      t.timestamps null: false
    end
  end
end

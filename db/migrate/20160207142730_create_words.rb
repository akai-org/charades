class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word, null: false
      t.references :category, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end

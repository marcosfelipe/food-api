class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :description
      t.references :restaurant, index: true, foreign_key: true
      t.float :price

      t.timestamps null: false
    end
  end
end

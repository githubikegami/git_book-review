class CreateBookreviews < ActiveRecord::Migration[5.2]
  def change
    create_table :bookreviews do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :publisher
      t.text :image
      t.timestamps null: true
    end
  end
end

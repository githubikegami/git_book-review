class CreateBookreviews < ActiveRecord::Migration[5.2]
  def change
    create_table :bookreviews do |t|

      t.timestamps
    end
  end
end

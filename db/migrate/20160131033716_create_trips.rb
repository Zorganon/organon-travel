class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.integer :price

      t.timestamps null: false
    end
  end
end

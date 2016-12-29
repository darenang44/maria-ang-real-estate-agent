class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.text :address
      t.text :price

      t.timestamps
    end
  end
end

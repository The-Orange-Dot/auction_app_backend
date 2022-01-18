class CreateProductsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :category
      t.string :name
      t.string :descriptionPreview
      t.string :description
      t.string :images
      t.integer :price
      t.integer :ticketsRemaining
      t.integer :tickets
      t.integer :keywords
      t.integer :user_id
      t.timestamps
    end
  end
end

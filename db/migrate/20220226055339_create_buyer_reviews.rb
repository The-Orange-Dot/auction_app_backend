class CreateBuyerReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :buyer_reviews do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :product, null: false, foreign_key: true
      t.integer :rating
      t.string :review

      t.timestamps
    end
  end

 
end

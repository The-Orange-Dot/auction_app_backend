class CreateSellerReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :seller_reviews do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :product, null: false, foreign_key: true
      t.string :review, null: false

      t.timestamps
    end
  end
end

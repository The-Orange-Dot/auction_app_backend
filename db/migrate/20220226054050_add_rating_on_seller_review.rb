class AddRatingOnSellerReview < ActiveRecord::Migration[6.1]
  def change
    add_column :seller_reviews, :rating, :integer
  end
end

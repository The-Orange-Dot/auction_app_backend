class AddMoreAssociation < ActiveRecord::Migration[6.1]
  def change
    add_column :seller_reviews, :buyer_id, :integer
    add_column :buyer_reviews, :seller_id, :integer
  end
end

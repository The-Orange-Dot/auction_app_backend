class CreateUserBuyerAndSellerRanking < ActiveRecord::Migration[6.1]
  def change
    create_table :user_buyer_and_seller_rankings do |t|

      remove_column :users, :rating
      add_column :users, :buyer_rating, :float, default: 0
      add_column :users, :seller_rating, :float, default: 0
      add_column :users, :dob, :date
      add_column :users, :tickets_bought, :integer, default: 0

      t.timestamps
    end
  end
end

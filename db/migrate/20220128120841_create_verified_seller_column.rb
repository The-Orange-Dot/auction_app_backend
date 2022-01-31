class CreateVerifiedSellerColumn < ActiveRecord::Migration[6.1]
  def change
    create_table :verified_seller_columns do |t|

      add_column :users, :verified, :boolean, default: false

      t.timestamps
    end
  end
end

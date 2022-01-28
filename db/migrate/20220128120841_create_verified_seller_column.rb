class CreateVerifiedSellerColumn < ActiveRecord::Migration[6.1]
  def change
    create_table :verified_seller_columns do |t|

      add_column :users, :verified, :boolean

      t.timestamps
    end
  end
end

class AddProductBuyersColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :buyers, :string, default: nil
  end
end

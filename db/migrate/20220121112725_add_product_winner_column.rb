class AddProductWinnerColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :winner, :integer, default: 0
  end
end

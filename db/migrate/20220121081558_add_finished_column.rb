class AddFinishedColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :finished, :boolean, default: false
  end
end

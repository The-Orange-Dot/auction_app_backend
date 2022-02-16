class AddShippingAndBillingAddress < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :billing_address, :string
  end
end

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :username
      t.string :password
      t.string :picture
      t.integer :points
      t.string :email
      t.datetime :dateOfBirth
      t.string :address
      t.timestamps
    end
  end
end

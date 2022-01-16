class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "username"
      t.string "password"
      t.string "email"
      t.datetime "date_of_birth"
      t.string "address"
    end
  end
end

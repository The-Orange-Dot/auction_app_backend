class AddDefaultToUserPoints < ActiveRecord::Migration[6.1]


    def down
      change_column :users, :points, :integer
    end

    def up
      change_column :users, :points, :integer, default: 0
    end


end

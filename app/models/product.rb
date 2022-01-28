class Product < ActiveRecord::Base
  belongs_to :user

  def find_buyers
    self.buyers.split(", ")
  end

  def find_seller
    User.find(self.user_id)
  end

  
end
class Product < ActiveRecord::Base
  belongs_to :user

  def find_buyers
    self.buyers.split(", ")
  end

  
end
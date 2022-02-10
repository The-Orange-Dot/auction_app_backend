class Product < ActiveRecord::Base
  belongs_to :user

validates :name, presence: true
validates :price, presence: true
validates :price, numericality: {greater_than_or_equal_to: 2000}
validates :tickets, presence: true



  def find_buyers
    self.buyers.split(", ")
  end

  def find_seller
    User.find(self.user_id)
  end

  
end
class Product < ActiveRecord::Base
  belongs_to :user
  has_one :seller_review, through: :user
  has_one :buyer_review, through: :user

validates :name, presence: true
validates :name, length: {maximum: 35}
validates :category, presence: true
validates :price, presence: true
validates :price, numericality: {greater_than_or_equal_to: 1000}
validates :tickets, presence: true
validates :tickets, numericality: {in: 3..50}
validates :description, length: {maximum: 1000}
validates :description, presence: true
validates :keywords, length: {maximum: 50}



  def find_buyers
    self.buyers.split(", ")
  end

  def find_seller
    User.find(self.user_id)
  end

  
end
class BuyerReview < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def seller
    User.find(self.seller_id)
  end
end

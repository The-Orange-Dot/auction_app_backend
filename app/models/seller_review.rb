class SellerReview < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def buyer
    User.find(self.buyer_id)
  end
end

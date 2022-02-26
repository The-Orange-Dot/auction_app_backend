class BuyerReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :review, :seller
  has_one :user
  has_one :product

  def seller
    User.find(self.object.seller_id)
  end
end

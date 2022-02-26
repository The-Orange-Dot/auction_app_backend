class BuyerReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :review, :seller_id
  has_one :user
  has_one :product

  def seller_id
    User.find(self.object.seller_id)
  end
end

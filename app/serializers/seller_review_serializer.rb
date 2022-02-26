class SellerReviewSerializer < ActiveModel::Serializer
  attributes :id, :review, :rating, :buyer_id
  has_one :user
  has_one :product

  def buyer_id
    User.find(self.object.buyer_id)
  end
end

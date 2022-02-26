class BuyerReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :review
  has_one :user
  has_one :product

end

class SellerReviewSerializer < ActiveModel::Serializer
  attributes :id, :review, :rating
  has_one :user
  has_one :product

 
end

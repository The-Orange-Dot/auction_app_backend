class SellerReviewSerializer < ActiveModel::Serializer
  attributes :id, :review, :rating, :buyer
  has_one :user
  has_one :product

  def buyer
    User.find(self.object.buyer_id)
  end
 
end

class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :lastName, :username, :picture, :points, :email, :address, :billing_address, :created_at, :buyer_rating, :seller_rating, :dob, :tickets_bought, :verified, :seller_reviews, :buyer_reviews

def seller_reviews
  SellerReview.all.filter{|review| review.user_id == self.object.id}
end

def buyer_reviews
  BuyerReview.all.filter{|review| review.user_id == self.object.id}
end
end

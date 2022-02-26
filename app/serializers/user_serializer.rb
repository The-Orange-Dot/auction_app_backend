class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :lastName, :username, :picture, :points, :email, :address, :billing_address, :created_at, :buyer_rating, :seller_rating, :dob, :tickets_bought, :verified, :seller_reviews, :buyer_reviews

def seller_reviews
  SellerReview.all.filter{|review| review.user_id == self.object.id}
  reviews.map{|review| review.buyer_id = User.find(review.buyer_id)
end

def buyer_reviews
  reviews = BuyerReview.all.filter{|review| review.user_id == self.object.id}
  reviews.map{|review| review.seller_id = User.find(review.seller_id)}
end

def buyer_rating
  user_reviews = BuyerReview.all.filter{|review| review.user_id == self.object.id}
  user_ratings = user_reviews.map{|review| review.rating}
  if user_ratings.length == 0 || nil
    return 0
  else
    rating_average = user_ratings.sum / user_ratings.length
    rating_average
  end
end

def seller_rating
  user_reviews = SellerReview.all.filter{|review| review.user_id == self.object.id}
  user_ratings = user_reviews.map{|review| review.rating}
  if user_ratings.length == 0 || nil
    return 0
  else
    rating_average = user_ratings.sum / user_ratings.length
    rating_average
  end
end
end

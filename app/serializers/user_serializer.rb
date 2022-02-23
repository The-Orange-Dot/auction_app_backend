class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :lastName, :username, :picture, :points, :email, :address, :billing_address, :created_at, :buyer_rating, :seller_rating, :dob, :tickets_bought, :verified
end

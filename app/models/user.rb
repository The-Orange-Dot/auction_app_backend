class User < ActiveRecord::Base
  has_secure_password
  has_many :products

  validates :email, uniqueness:  { message: " is already in use"}
  validates :email, presence: true
  validates :username, uniqueness: { message: "%{value} has already been taken"}
  validates :username, presence: true
  validates :password, length: {minimum: 8, message: " must be at least 8 characters long"}
  validates :password, presence: true
  validates :username, length: {in: 6..15, message: " must be between 6 - 15 characters long"}



  # This breaks the charge_points controller for some reason

  def target_id
    self.id
  end
end
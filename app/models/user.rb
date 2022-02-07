class User < ActiveRecord::Base
  # has_secure_password
  has_many :products

  validates :email, uniqueness: true
  validates :username, uniqueness: true
  validates :password, length: {minimum: 8}

  # This breaks the charge_points controller for some reason
  # validates :username, length: {in: 6..15}

  def target_id
    self.id
  end
end
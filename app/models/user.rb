class User < ActiveRecord::Base
  # has_secure_password
  has_many :products

  validates :email, uniqueness: true
  validates :email, presence: true
  validates :username, uniqueness: true
  validates :username, presence: true
  validates :password, length: {minimum: 8}
  validates :password, presence: true


  # This breaks the charge_points controller for some reason
  # validates :username, length: {in: 6..15}

  def target_id
    self.id
  end
end
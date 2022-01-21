class User < ActiveRecord::Base
  has_many :products


  def target_id
    self.id
  end
end
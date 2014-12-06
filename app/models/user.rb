class User < ActiveRecord::Base
  validates_uniqueness_of :username

  has_many :images

  # def full_name
  # 	self.first_name + " " + self.last_name
  # end

  def sign_up_date
  	self.created_at.to_date.to_s(:long)
  end

end
class User < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :username
  validates_uniqueness_of :username
  validates :first_name, :last_name, :numericality => false 

  has_many :images

  def full_name
  	self.first_name + " " + self.last_name
  end

  def sign_up_date
  	self.created_at.to_date.to_s(:long)
  end

end
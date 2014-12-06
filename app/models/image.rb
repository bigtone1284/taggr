class Image < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :username
  validates_uniqueness_of :username
  validates :first_name, :last_name, :numericality => false 
  has_secure_password

  belongs_to :locations, :users
  has_many_and_belongs_to :tags

  def date
  	self.created_at.to_date.to_s(:long)
  end

end
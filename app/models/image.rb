class Image < ActiveRecord::Base

  belongs_to :locations
  belongs_to :users
  has_and_belongs_to_many :tags

  def date
  	self.created_at.to_date.to_s(:long)
  end

end
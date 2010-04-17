class Category < ActiveRecord::Base
  validates_presence_of :name
  has_many :guests
  
  def to_s
    name
  end
end

class Guest < ActiveRecord::Base
  validates_presence_of :name, :category, :essential
  belongs_to :category
end

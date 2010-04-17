class Guest < ActiveRecord::Base
  attr_accessible :name, :category, :essential
  belongs_to :category
end

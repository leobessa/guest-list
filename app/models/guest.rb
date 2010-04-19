class Guest < ActiveRecord::Base
  belongs_to :category
  named_scope :essential, :conditions => {:essential => true}
end

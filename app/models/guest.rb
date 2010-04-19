class Guest < ActiveRecord::Base
  belongs_to :category
  named_scope :essential, :conditions => {:essential => true}
  named_scope :without_invitation, :conditions => {:invitation_id => nil}

  def to_s
    name
  end
end

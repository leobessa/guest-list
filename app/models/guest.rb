class Guest < ActiveRecord::Base
  belongs_to :category
  named_scope :essential, :conditions => {:essential => true}
  named_scope :without_invitation, :conditions => {:invitation_id => nil}
  named_scope :with_invitation, :conditions => "invitation_id IS NOT NULL"
  belongs_to :invitation
  
  default_scope :order => 'created_at DESC'
  
  def to_s
    name
  end
end

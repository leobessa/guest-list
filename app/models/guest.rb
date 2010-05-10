class Guest < ActiveRecord::Base
  belongs_to :category
  named_scope :essential, :conditions => {:essential => true}
  named_scope :tea_party, :conditions => {:tea_party => true}  
  named_scope :without_invitation, :conditions => {:invitation_id => nil}
  named_scope :with_invitation, :conditions => "invitation_id IS NOT NULL"
  belongs_to :invitation
  validates_presence_of :name, :category
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  
  default_scope :order => 'id DESC'
  
  def to_s
    name
  end
end

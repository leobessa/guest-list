class Guest < ActiveRecord::Base
  belongs_to :category
  named_scope :dismissed, :conditions => {:dismissed => true}
  named_scope :not_dismissed, :conditions => ['dismissed IS ? OR dismissed = ?',nil,false]
  named_scope :essential, :conditions => {:essential => true}
  named_scope :tea_party, :conditions => {:tea_party => true}  
  named_scope :without_invitation, :conditions => {:invitation_id => nil}
  named_scope :with_invitation, :conditions => "invitation_id IS NOT NULL"
  named_scope :having_invitation, (lambda do |c|
    case c.to_s
    when "true" 
      {:conditions => "invitation_id IS NOT NULL"}
    when "false" 
      {:conditions => {:invitation_id => nil}}
    else 
      {}
    end
  end)
  belongs_to :invitation
  validates_presence_of :name, :category
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i, :allow_blank => true

  default_scope :order => 'id DESC'

  def to_s
    name
  end
end

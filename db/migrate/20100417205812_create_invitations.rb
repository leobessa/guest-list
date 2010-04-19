class CreateInvitations < ActiveRecord::Migration
  def self.up
    create_table :invitations do |t|
      t.string :name
      t.has_many :guests
      t.timestamps
    end
  end
  
  def self.down
    drop_table :invitations
  end
end

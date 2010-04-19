class AddCollumInvitationIdToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :invitation_id, :integer
  end

  def self.down
    remove_column :guests, :invitation_id
  end
end

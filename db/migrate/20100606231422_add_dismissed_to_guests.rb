class AddDismissedToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :dismissed, :boolean
  end

  def self.down
    remove_column :guests, :dismissed
  end
end

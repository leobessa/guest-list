class AddTeaPartyToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :tea_party, :boolean
  end

  def self.down
    remove_column :guests, :tea_party
  end
end

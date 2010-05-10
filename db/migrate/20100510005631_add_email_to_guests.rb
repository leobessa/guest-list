class AddEmailToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :email, :string
  end

  def self.down
    remove_column :guests, :email
  end
end

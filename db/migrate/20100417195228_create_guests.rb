class CreateGuests < ActiveRecord::Migration
  def self.up
    create_table :guests do |t|
      t.string :name
      t.belongs_to :category
      t.boolean :essential
      t.timestamps
    end
  end
  
  def self.down
    drop_table :guests
  end
end

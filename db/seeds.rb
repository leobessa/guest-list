# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

FasterCSV.foreach("#{RAILS_ROOT}/db/guests.csv", :col_sep => "\t") do |row|
    category_name = row[0]
    guest_name = row[1]
    essential = (/n/ =~ row[2])
    category = Category.find_or_create_by_name(category_name)
    Guest.create!(:name => guest_name, :category => category, :essential => essential)
end

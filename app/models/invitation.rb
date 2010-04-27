class Invitation < ActiveRecord::Base
  has_many :guests, :dependent => :nullify
end

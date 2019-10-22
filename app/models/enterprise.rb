class Enterprise < ApplicationRecord
  has_many :prodacts, :through => :lists
  has_many :lists, :dependent => :destroy
  has_one :boss
  has_one :market
end

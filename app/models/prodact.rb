class Prodact < ApplicationRecord
  has_many :enterprises, :through => :lists
  has_many :lists, :dependent => :destroy
end

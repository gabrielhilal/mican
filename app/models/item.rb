class Item < ActiveRecord::Base
  belongs_to :order
  attr_accessible :cases, :construction, :material, :price, :size36, :size37, :size38, :size39, :size40, :size41, :style

  validates :style, :presence => true
  validates :price, :presence => true

end

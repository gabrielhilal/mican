class Item < ActiveRecord::Base
  belongs_to :order
  attr_accessible :cases, :construction, :material, :price, :size36, :size37, :size38, :size39, :size40, :size41, :style

  validates :style, :presence => true
  validates :price, :presence => true
  validates :size36, :presence => true
  validates :size37, :presence => true
  validates :size38, :presence => true
  validates :size39, :presence => true
  validates :size40, :presence => true
  validates :size41, :presence => true

end

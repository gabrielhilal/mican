class Client < ActiveRecord::Base
  has_many :orders
  attr_accessible :buyer, :comments, :email, :name, :phone, :address

  validates :name, :presence => true


end

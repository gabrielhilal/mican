class Order < ActiveRecord::Base
  belongs_to :client
  has_many :items
  attr_accessible :currency, :number, :terms, :client_id

  validates :client_id, :presence => true
  validates :number, :presence => true
end

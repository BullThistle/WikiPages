class Business < ActiveRecord::Base
  has_many :locations
  validates :business, :presence => true
end

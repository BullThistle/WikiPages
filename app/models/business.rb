class Business < ActiveRecord::Base
  validates :business, :presence => true
end

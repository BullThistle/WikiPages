class Location < ActiveRecord::Base
  belongs_to :business

  validates :name, :presence => true
  validates :address, :presence => true
  validates :phone, :presence => true
  validates :website, :presence => true
  validates :open, :presence => true
  validates :close, :presence => true
  validates :business_id, :presence => true

end

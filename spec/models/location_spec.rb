require 'rails_helper'

describe Location do
  it { should validate_presence_of :name }
  it { should validate_presence_of :address }
  it { should validate_presence_of :phone }
  it { should validate_presence_of :website }
  it { should validate_presence_of :open }
  it { should validate_presence_of :close }
  it { should have_many :businesses }
end

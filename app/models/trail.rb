class Trail < ActiveRecord::Base
  validates :name, :city, :state, :country,  presence: true
  has_many :comments
end

class Trail < ActiveRecord::Base
  has_many :reviews

  validates :name, :city, :state, :country,  presence: true
end

class BodyType < ActiveRecord::Base
  has_many :cars
  attr_accessible :description
end

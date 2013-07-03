class Car < ActiveRecord::Base
  attr_accessible :color, :description, :image_url, :doors, :make, :model_name, :year
end

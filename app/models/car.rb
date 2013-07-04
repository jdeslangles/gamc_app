class Car < ActiveRecord::Base
  belongs_to :engine_type
  belongs_to :body_type
  attr_accessible :color, :description, :image_url, :doors, :make, :model_name, :year, :engine_type_id, :body_type_id
  # :body_type, :engine_type
end

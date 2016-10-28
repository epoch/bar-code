
class Dish < ActiveRecord::Base
  validates :name, length: { minimum: 2 }

  has_many :comments
  belongs_to :dish_type


end


class Aquarium < ApplicationRecord
  has_one :school
  has_one :decor
  has_one :equipment
end

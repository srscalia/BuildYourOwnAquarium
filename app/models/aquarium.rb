class Aquarium < ApplicationRecord
  has_many :schools
  has_many :decors
  has_many :equipment
end

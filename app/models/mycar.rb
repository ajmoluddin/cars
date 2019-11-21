class Mycar < ApplicationRecord
  validates_presence_of :make, :model, :year
  validates_uniqueness_of :model, scope: [:year, :make]
end

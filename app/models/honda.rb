class Honda < ApplicationRecord
  belongs_to :car

  validates_presence_of :mycar_id, :transmission, :vehicle_type
  validates_uniqueness_of :mycar_id, scope: [:transmission, :vehicle_type]
end

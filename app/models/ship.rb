class Ship < ApplicationRecord
  has_many :schedules
  has_many :maintenances
end

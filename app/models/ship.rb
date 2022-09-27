class Ship < ApplicationRecord
  has_many :maintenances, ->{order("updated_at DESC")}
end

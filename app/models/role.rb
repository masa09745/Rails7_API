class Role < ApplicationRecord
  belongs_to :section
  has_many :users
end

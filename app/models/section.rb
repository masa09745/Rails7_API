class Section < ApplicationRecord
  has_many :roles
  has_many :users
end

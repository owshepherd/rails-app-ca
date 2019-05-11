class Cuisine < ApplicationRecord
  has_many :providers
  has_many :listings
end

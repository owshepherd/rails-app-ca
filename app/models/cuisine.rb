class Cuisine < ApplicationRecord
  has_one :provider
  # has_many :listings
end

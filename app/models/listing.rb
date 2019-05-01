class Listing < ApplicationRecord
  has_one :provider

  validates :name, presence: true
end

class Booking < ApplicationRecord
  has_one :user
  has_one :provider
  has_one :place, dependent: :destroy
end

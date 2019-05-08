class Listing < ApplicationRecord
  has_one :provider

  validates :name, presence: true

  has_many :reviews, dependent: :destroy
  
end

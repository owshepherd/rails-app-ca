class Listing < ApplicationRecord
  has_one :provider
  has_many :reviews, dependent: :destroy
  
  validates :name, presence: true

end

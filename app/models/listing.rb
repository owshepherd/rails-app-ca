class Listing < ApplicationRecord
  has_one :provider
  has_many :reviews, dependent: :destroy
  belongs_to :cuisine
  validates :name, presence: true

end

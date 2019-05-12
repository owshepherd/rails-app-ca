class Listing < ApplicationRecord
  belongs_to :provider
  has_many :reviews, dependent: :destroy
  # belongs_to :cuisine
  validates :name, presence: true
end

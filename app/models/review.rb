class Review < ApplicationRecord
  belongs_to :listing
  belongs_to :user

  validates :username, presence: true
  validates :content, presence: true
  validates :rating, presence: true
  
end

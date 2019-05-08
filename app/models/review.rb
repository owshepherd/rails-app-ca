class Review < ApplicationRecord
  belongs_to :listing

  validates :username, presence: true
  validates :content, presence: true
  validates :rating, presence: true
  
end

class Provider < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one :listing
  has_many :bookings
  belongs_to :cuisine

  validates :username, presence: true
  validates :name, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :postcode, presence: true
  validates :minimum_persons, presence: true
  validates :cost_per_head, presence: true
  

end
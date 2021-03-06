class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :bookings, dependent: :destroy
  has_one_attached :uploaded_image, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :username, presence: true
  validates :dob, presence: true


end

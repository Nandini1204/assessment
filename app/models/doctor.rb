# app/models/doctor.rb
class Doctor < ApplicationRecord
  # Include Devise modules for authentication
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true

  has_many :appointments
end

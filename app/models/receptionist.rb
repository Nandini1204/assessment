# app/models/receptionist.rb
# app/models/receptionist.rb
class Receptionist < ApplicationRecord
  # Include Devise modules for authentication
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Add any additional validations or associations here
  validates :name, presence: true

  # Associations
  has_many :patients
end

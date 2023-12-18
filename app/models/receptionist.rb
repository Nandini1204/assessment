# app/models/receptionist.rb
class Receptionist < ApplicationRecord
    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
    has_many :patients

  end
  
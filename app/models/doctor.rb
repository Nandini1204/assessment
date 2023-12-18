# app/models/doctor.rb
class Doctor < ApplicationRecord
    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  end
  
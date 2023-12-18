# app/models/patient.rb
class Patient < ApplicationRecord
    
    belongs_to :receptionist
    has_many :appointments
  end
  
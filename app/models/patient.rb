class Patient < ApplicationRecord
  validates_presence_of :name, :age

  has_many :patient_doctors, dependent: :destroy
  has_many :doctors, through: :patient_doctors
end

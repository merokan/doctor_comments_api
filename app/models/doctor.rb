class Doctor < ApplicationRecord
  belongs_to :group
  has_many :doctors_specialties
  has_many :comments
  has_many :specialties, through: :doctors_specialties

  # Recommended doctors in area of same specialty

  def self.in_location(city)
    @specialty = Doctor.find(params[:doctor_id]).specialties.limit(1)
    Doctor.where(specialties: @specialty, city: city).limit(5)
  end
end



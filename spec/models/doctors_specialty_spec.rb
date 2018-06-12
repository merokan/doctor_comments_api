require 'rails_helper'

# Test suite for the Doctors Specialties model
RSpec.describe DoctorsSpecialty, type: :model do
  it { should belong_to(:doctor) }
  it { should belong_to(:specialty) }
end

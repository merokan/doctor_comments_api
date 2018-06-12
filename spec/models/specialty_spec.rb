require 'rails_helper'

# Test suite for the Specialty model
RSpec.describe Specialty, type: :model do
  it { should have_many(:doctors) }
  it { should have_many(:doctors_specialties) }
end
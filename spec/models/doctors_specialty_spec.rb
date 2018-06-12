require 'rails_helper'

RSpec.describe DoctorsSpecialty, type: :model do
  it { should belong_to(:doctor) }
  it { should belong_to(:specialty) }
  
end

require 'rails_helper'

RSpec.describe Doctor, type: :model do
  it { should have_many(:comments) }
  it { should have_many(:doctors_specialties) }
  it { should have_many(:specialties) }
  it { should belong_to(:group) }

end

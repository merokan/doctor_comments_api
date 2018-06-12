require 'rails_helper'

# Test suite for the Group model
RSpec.describe Group, type: :model do
  it { should have_many(:doctors) }
end

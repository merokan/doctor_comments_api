require 'rails_helper'

# Test suite for the Author model
RSpec.describe Author, type: :model do
  it { should have_many(:comments) }
end

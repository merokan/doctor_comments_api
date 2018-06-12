require 'rails_helper'

RSpec.describe Author, type: :model do
  it { should have_many(:comments) }
  
end

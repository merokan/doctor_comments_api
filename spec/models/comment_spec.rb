require 'rails_helper'

RSpec.describe Comment, type: :model do

  it { should belong_to(:doctor) }
  it { should belong_to(:author) }

  context "With valid attributes" do 
    it "should save" do 
      expect(build(:comment)).to be_valid
    end
  end

  context "With invalid attributes" do 
    it "should not save if comment_body field is blank" do
      expect(build(:comment, comment_body: "")).to be_invalid
    end
    
    it "should not save if rating field is blank" do
      expect(build(:comment, rating: "")).to be_invalid
    end  
  end
    
end

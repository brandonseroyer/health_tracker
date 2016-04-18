require 'rails_helper'

describe Exercise do
  it { should belong_to :user }
  it { should validate_presence_of :activity }
  it { should validate_presence_of :calories }

  describe "self.calorie_total" do
    it "returns an array of defined molds" do
      running = Exercise.create({:activity => 'running', :calories => 450})
      swimming = Exercise.create({:activity => 'running', :calories => 550})
      expect(Exercise.calorie_total).to eq(1000)
    end
  end
end

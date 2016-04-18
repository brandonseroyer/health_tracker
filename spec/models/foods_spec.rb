require 'rails_helper'

describe Food do
  it { should belong_to :user }
  it { should validate_presence_of :name }
  it { should validate_presence_of :calories }

  describe "self.calorie_total" do
    it "returns an array of defined molds" do
      tacos = Food.create({:name => 'tacos', :calories => 450})
      chips = Food.create({:name => 'chips', :calories => 200})
      expect(Food.calorie_total).to eq(650)
    end
  end
end

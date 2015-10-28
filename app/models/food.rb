class Food < ActiveRecord::Base
  belongs_to :users

  validates :name, presence: true
  validates :calories, presence: true

  def self.calorie_total
    sum = 0
    all.each do |food|
      sum += food.calories
    end
    return sum
  end
end

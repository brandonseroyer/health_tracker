class Exercise < ActiveRecord::Base
  belongs_to :users

  validates :activity, presence: true
  validates :calories, presence: true

  def self.calorie_total
    sum = 0
    all.each do |exercise|
      sum += exercise.calories
    end
    return sum
  end
end

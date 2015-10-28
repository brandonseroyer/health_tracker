class Food < ActiveRecord::Base
  belongs_to :users

  validates :name, presence: true
  validates :calories, presence: true

  define_method(:calorie_total) do
    sum = 0
    self.calories.each do
      sum += calories
    end
    return sum
  end
end

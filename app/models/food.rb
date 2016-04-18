class Food < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates :calories, presence: true

  def self.calorie_total
    sum = 0
    all.each do |food|
      sum += food.calories
    end
    return sum
  end

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end

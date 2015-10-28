class Food < ActiveRecord::Base
  belongs_to :users

  validates :name, presence: true
  validates :calories, presence: true

end

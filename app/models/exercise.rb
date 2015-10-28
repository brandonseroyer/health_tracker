class Exercise < ActiveRecord::Base
  belongs_to :users

  validates :activity, presence: true
  validates :calories, presence: true


end

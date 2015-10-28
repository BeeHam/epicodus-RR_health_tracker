class Exercise < ActiveRecord::Base
  belongs_to :user
  validates :exercise_name, presence: true
  validates :calories_burned, presence: true
end

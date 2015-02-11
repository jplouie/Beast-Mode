class ExerciseSet < ActiveRecord::Base
  belongs_to :exercise
  has_many :workouts
  has_many :workouts, through: :set_workouts
end

class Workout < ActiveRecord::Base
  has_many :users
  has_many :users, through: :user_workouts
  has_many :exercise_sets
  has_many :exercise_sets, through: :set_workouts
end

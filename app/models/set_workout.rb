class SetWorkout < ActiveRecord::Base
  belongs_to :workout
  belongs_to :exercise_set
end

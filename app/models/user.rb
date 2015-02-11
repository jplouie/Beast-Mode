class User < ActiveRecord::Base
  has_many :workouts
  has_many :workouts, through: :user_workouts
end

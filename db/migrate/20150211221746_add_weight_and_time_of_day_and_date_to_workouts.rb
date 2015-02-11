class AddWeightAndTimeOfDayAndDateToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :weight, :integer
    add_reference :workouts, :time_of_day, index: true
    add_column :workouts, :date, :string
  end
end

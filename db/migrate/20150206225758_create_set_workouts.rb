class CreateSetWorkouts < ActiveRecord::Migration
  def change
    create_table :set_workouts do |t|
      t.references :workout, index: true
      t.references :exercise_set, index: true

      t.timestamps
    end
  end
end

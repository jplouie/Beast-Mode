class CreateExerciseSets < ActiveRecord::Migration
  def change
    create_table :exercise_sets do |t|
      t.references :exercise, index: true
      t.integer :reps
      t.string :rep_type

      t.timestamps
    end
  end
end

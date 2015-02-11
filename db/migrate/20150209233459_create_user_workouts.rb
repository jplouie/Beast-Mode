class CreateUserWorkouts < ActiveRecord::Migration
  def change
    create_table :user_workouts do |t|
      t.references :user, index: true
      t.references :workout, index: true

      t.timestamps
    end
  end
end

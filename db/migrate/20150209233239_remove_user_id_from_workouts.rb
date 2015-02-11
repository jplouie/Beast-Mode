class RemoveUserIdFromWorkouts < ActiveRecord::Migration
  def change
    remove_column :workouts, :user_id
  end
end

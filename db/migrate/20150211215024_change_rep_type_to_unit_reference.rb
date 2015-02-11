class ChangeRepTypeToUnitReference < ActiveRecord::Migration
  def change
    remove_column :exercise_sets, :rep_type
    add_reference :exercise_sets, :unit, index: true
  end
end

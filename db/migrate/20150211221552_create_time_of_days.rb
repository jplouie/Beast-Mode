class CreateTimeOfDays < ActiveRecord::Migration
  def change
    create_table :time_of_days do |t|
      t.string :time

      t.timestamps
    end
  end
end

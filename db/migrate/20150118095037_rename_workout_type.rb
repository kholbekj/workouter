class RenameWorkoutType < ActiveRecord::Migration
  def change
    rename_column :workouts, :type, :focus
  end
end

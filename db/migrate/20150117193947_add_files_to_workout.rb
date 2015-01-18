class AddFilesToWorkout < ActiveRecord::Migration
  def change
    add_column :workouts, :workout_image, :string
    add_column :workouts, :descripion_image, :string
  end
end

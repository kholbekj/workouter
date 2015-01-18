class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :title
      t.integer :level
      t.string :type

      t.timestamps
    end
  end
end

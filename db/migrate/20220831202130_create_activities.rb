class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.integer :active_day_id
      t.string :exercise_type
      t.integer :activity_length
      t.integer :calories
      t.float :distance
      t.integer :streak
      t.integer :rating
      t.string :summary

      t.timestamps
    end
  end
end

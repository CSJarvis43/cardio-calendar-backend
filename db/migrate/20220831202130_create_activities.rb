class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.integer :active_day_id
      t.string :exercise_type

      t.timestamps
    end
  end
end

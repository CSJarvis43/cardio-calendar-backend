class CreateActiveDays < ActiveRecord::Migration[7.0]
  def change
    create_table :active_days do |t|
      t.date :date
      t.string :day_of_week
      t.integer :streak
      t.integer :user_id

      t.timestamps
    end
  end
end

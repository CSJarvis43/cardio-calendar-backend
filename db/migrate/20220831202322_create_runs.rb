class CreateRuns < ActiveRecord::Migration[7.0]
  def change
    create_table :runs do |t|
      t.integer :activity_length
      t.integer :calories
      t.float :distance
      t.integer :streak
      t.integer :rating
      t.string :summary
      t.integer :activity_id

      t.timestamps
    end
  end
end

class CreateExercise < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :activity
      t.integer :calories

      t.timestamps
    end
  end
end

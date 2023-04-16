class CreateHabitHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :habit_histories do |t|
      t.references :habit, null: false, foreign_key: true
      t.date :achievement_date

      t.timestamps
    end
  end
end

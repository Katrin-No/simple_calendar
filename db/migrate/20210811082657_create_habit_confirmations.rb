class CreateHabitConfirmations < ActiveRecord::Migration[6.1]
  def change
    create_table :habit_confirmations do |t|
      t.references(:habit)
      t.date :confirmation_date
      t.boolean :answer

      t.timestamps
    end
  end
end

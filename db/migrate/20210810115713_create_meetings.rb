class CreateMeetings < ActiveRecord::Migration[6.1]
  def change
    create_table :meetings do |t|
      t.string :name
      t.datetime :starts_at

      t.timestamps
    end
  end
end

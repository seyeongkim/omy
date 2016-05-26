class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :content, default:" "
      t.integer :user_id
      t.timestamps null: false
    end
  end
end

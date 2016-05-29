class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.text :time1
      t.text :time2
      t.text :time3
      t.text :time4
      t.text :time5
      t.text :time6
      t.text :time7
      t.text :time8
      t.text :time9
      t.text :time10
      t.text :time11
      t.text :time12
      t.text :time13
      t.text :time14
      t.integer :user_id
      t.timestamps null: false
    end
  end
end

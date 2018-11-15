class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
<<<<<<< HEAD
      t.text :mon
      t.text :tue
      t.text :wed
      t.text :thu
      t.text :fri
      t.text :sat
      t.text :sun
=======
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
>>>>>>> 20f47f33b828d68e2ce502c1f66332d278983faf
      t.integer :user_id
      t.timestamps null: false
    end
  end
end

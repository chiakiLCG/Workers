class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.integer :user_id
      t.date :date,                null: false
      t.time :start_time,          null: false
      t.time :end_time,            null: false
      t.time :break_time,          null: false
      t.text :comment,             null: false
      t.integer :weekday_overtime, null: false
      t.integer :paid_holidays,    null: false

      t.timestamps
    end
  end
end

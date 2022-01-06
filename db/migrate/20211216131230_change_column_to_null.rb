class ChangeColumnToNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :works, :date, true
    change_column_null :works, :start_time, true
    change_column_null :works, :end_time, true
    change_column_null :works, :break_time, true
    change_column_null :works, :comment, true
    change_column_null :works, :weekday_overtime, true
    change_column_null :works, :paid_holidays, true
  end
end

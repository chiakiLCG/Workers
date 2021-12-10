class Work < ApplicationRecord
  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :break_time, presence: true
  validates :comment, presence: true
  validates :weekday_overtime, presence: true
  validates :paid_holidays, presence: true
end

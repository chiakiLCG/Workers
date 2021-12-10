FactoryBot.define do
  factory :work do
    user_id { 1 }
    date { '2021-06-30' }
    start_time { '2021-06-30 11:24:21' }
    end_time { '2021-06-30 11:24:21' }
    break_time { '2021-06-30 11:24:21' }
    comment { 'MyText' }
    weekday_overtime { 1 }
    paid_holidays { 1 }
  end
end

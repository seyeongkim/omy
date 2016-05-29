json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :user_id, :time1, :time2, :time3
  json.url schedule_url(schedule, format: :json)
end

if @schedules.present?
  json.array!(@schedules) do |schedule|
    json.extract! schedule, :id, :updated_at, :title, :venue, :gps, :description, :image_base_64

    json.day schedule.start_time.strftime('%d')
    json.month schedule.start_time.strftime('%B')
    json.year schedule.start_time.strftime('%Y')
    json.short_month schedule.start_time.strftime('%^b')
    json.start_time schedule.start_time.strftime('%H:%M')
    json.end_time schedule.end_time.strftime('%H:%M')
    json.date time_ago_in_words(schedule.created_at)
  end
else
  json.response do
    json.code 404
  end
end

if @competitions.present?
  json.array!(@competitions) do |competition|
    json.extract! competition, :id, :updated_at, :name, :competition_url, :question, :description, :closing_date, :image_base_64
    json.date time_ago_in_words(competition.created_at)
  end
else
  json.response do
    json.code 404
  end
end

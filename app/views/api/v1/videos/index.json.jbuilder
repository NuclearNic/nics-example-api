if @videos.present?
  json.array!(@videos) do |video|
    json.extract! video, :id, :updated_at, :name, :youtube_url, :image_base_64
    json.date time_ago_in_words(video.created_at)
  end
else
  json.response do
    json.code 404
  end
end

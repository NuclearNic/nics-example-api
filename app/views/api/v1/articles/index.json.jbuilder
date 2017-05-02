if @articles.present?
  json.array!(@articles) do |article|
    json.extract! article, :id, :updated_at, :title, :teaser, :body, :image_caption, :image_base_64
    json.date time_ago_in_words(article.created_at)
  end
else
  json.response do
    json.code 404
  end
end

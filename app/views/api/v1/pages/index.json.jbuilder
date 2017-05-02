if @pages.present?
  json.array!(@pages) do |page|
    json.extract! page, :id, :updated_at, :title, :body, :image_caption, :fa_icon, :link_url, :position, :image_base_64
    json.date time_ago_in_words(page.created_at)
  end
else
  json.response do
    json.code 404
  end
end

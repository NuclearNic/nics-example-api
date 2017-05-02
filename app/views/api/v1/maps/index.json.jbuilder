if @maps.present?
  json.array!(@maps) do |map|
    json.extract! map, :id, :updated_at, :title, :icon
    if Rails.env.production?
      json.kml map.kml_url  if map.kml.present?
    else
      json.kml request.protocol + request.host_with_port + map.kml_url  if map.kml_url.present?
    end
    json.icon "ion-#{map.icon.sub('ion-','')}"
  end
else
  json.response do
    json.code 404
  end
end

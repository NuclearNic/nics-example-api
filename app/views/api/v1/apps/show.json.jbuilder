if @app.present?
  
  json.extract! @app, :id, :updated_at, :name, :title, :subtitle, :email, :telephone, :address, 
                      :menu_banner_image_base_64, :menu_icon_image_base_64, :menu_footer_image_base_64

  # LAST UPDATE PER MODEL
  json.models do 
    json.array! [{'pages': @app.pages.maximum(:updated_at)}, 
      {'articles': @app.articles.maximum(:updated_at)},
      {'videos': @app.videos.maximum(:updated_at)}, 
      {'schedules': @app.schedules.maximum(:updated_at)}, 
      {'competitions': @app.competitions.maximum(:updated_at)}] 
  end
  json.api_v1_endpoints do 
    json.array! [ Rails.application.routes.routes.collect {|r| r.path.spec.to_s}.
                  uniq.keep_if{|e| /api\/v1/.match(e)}.map{|e| e.gsub("(.:format)","")} ] 
  end

else
  json.response do
    json.code 404
  end
end

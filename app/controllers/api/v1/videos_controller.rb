class Api::V1::VideosController < Api::V1::BaseController
  respond_to :json


  def index
  	@videos = @api_app.videos.published.order(:position)
  end

end

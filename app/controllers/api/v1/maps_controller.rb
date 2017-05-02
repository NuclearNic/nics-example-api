class Api::V1::MapsController < Api::V1::BaseController
  respond_to :json


  def index
  	@maps = @api_app.maps.published.order(:position)
  end

end

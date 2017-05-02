class Api::V1::PagesController < Api::V1::BaseController
  respond_to :json


  def index
  	@pages = @api_app.pages.published.order(:position)
  end


end

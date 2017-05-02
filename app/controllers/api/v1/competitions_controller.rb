class Api::V1::CompetitionsController < Api::V1::BaseController
  respond_to :json


  def index
  	@competitions = @api_app.competitions.published
  end
  
end

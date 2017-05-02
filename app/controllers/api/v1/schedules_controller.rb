class Api::V1::SchedulesController < Api::V1::BaseController
	respond_to :json


	def index
  	@schedules = @api_app.schedules.published
	end


end
class Api::V1::AppsController < Api::V1::BaseController
  respond_to :json
  before_filter :get_current_version

  def show
  	@app = App.find(params[:id])
  end

  def get_current_version
    # @current_version = AppVersion.all.last.version
  end

end

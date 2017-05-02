class Api::V1::ArticlesController < Api::V1::BaseController
  respond_to :json

  def index
  	@articles = @api_app.articles.published.order(:position)
  end

end

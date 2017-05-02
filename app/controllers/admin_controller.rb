class AdminController < ActionController::Base
	
  before_action :authenticate_user!, :find_selected_app, :set_company_layout
  helper Bootsy::Engine.helpers

	def dashboard	
	end

  def statistics
  end

  def app_selection
    if App.where(id: params[:app_id]).present?
      session[:app_id] = params[:app_id] 
    else
      session[:app_id] = nil
    end
    redirect_to :back
  end 

  def live_view
  end

  def find_selected_app
    unless session[:app_id].nil?
      @app = App.find(session[:app_id])
    end
  end

  def api_endpoints

  end

  def set_company_layout
    @app.present? ? @company_layout = @app.company : @company_layout = Company.find_by(name: "Lumico")
  end

end

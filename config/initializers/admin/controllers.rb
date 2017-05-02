(Admin.models - ["user", "ordered_view_field"]).each do |model|
  controller_name = "#{model.titleize.gsub('_', '').gsub(' ', '')}"

 class_eval "class Admin::#{controller_name.pluralize}Controller < AdminController
  before_action :set_#{model}, only: [:show, :edit, :update, :destroy]
  layout 'admin'

  def index
    if session[:app_id].present? and #{controller_name}.column_names.include? 'app_id'
      @#{model.pluralize} = #{controller_name}.where(app_id: session[:app_id])
    else
      @#{model.pluralize} = #{controller_name}.all
    end
  end

  def show
  end

  def new
    @#{model} = #{controller_name}.new
  end

  def edit
  end

  def create
    @#{model} = #{controller_name}.new(#{model}_params)

    respond_to do |format|
      if @#{model}.save
        format.html { redirect_to admin_#{model.pluralize}_url, notice: '#{model.capitalize} was successfully created.' }
        format.json { render action: 'show', status: :created, location: @#{model} }
      else
        format.html { render action: 'new' }
        format.json { render json: @#{model}.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @#{model}.update(#{model}_params)
        format.html { redirect_to admin_#{model.pluralize}_url, notice: '#{model.capitalize} was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @#{model}.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @#{model}.destroy
    respond_to do |format|
      format.html { redirect_to admin_#{model.pluralize}_url, notice: '#{model.capitalize} was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_#{model}
      @#{model} = #{controller_name}.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def #{model}_params
      params.require(:#{model}).permit(#{model.classify.constantize.column_names.map(&:to_sym).split(', ')} + Admin.remove_image_fields(#{controller_name}) )
    end

  end"

end


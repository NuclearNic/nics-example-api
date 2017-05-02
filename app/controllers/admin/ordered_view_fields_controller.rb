class Admin::OrderedViewFieldsController < AdminController
  
  layout 'admin'
  before_action :set_ordered_view_field, only: [:show, :edit, :update, :destroy, :reorder_fields, :show_field, :hide_field]


  def index
    @ordered_view_fields = OrderedViewField.all
  end

  def reorder_fields

    @ordered_view_field.model_fields.clear()
    params[:order].each do |field|
      @ordered_view_field.model_fields << field
    end 
    @ordered_view_field.save

  end

  def hide_field
    @ordered_view_field.model_fields.delete(params[:field])
    @ordered_view_field.save
    redirect_to :back
  end

  def show_field
    @ordered_view_field.model_fields << params[:field]
    @ordered_view_field.save
    redirect_to :back
  end

  def destroy
    @ordered_view_field.destroy
    respond_to do |format|
      format.html { redirect_to admin_ordered_view_fields_url, notice: 'OrderedViewField was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_ordered_view_field
      @ordered_view_field = OrderedViewField.find(params[:id])
    end

end
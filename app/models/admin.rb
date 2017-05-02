class Admin

  def self.models
    models = ActiveRecord::Base.connection.tables - ["schema_migrations", "bootsy_images", "bootsy_image_galleries"]
    # models.delete('schema_migrations')
    models.map(&:singularize)
  end

	def self.remove_image_fields(model_name)
		model_name.column_names.find_all{|e| e.include?("image")}.
				reject{|e| e.include?("64") or e.include?("caption")}.map{|e| 'remove_' << e }.map(&:to_sym)
		end

end

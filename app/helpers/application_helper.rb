module ApplicationHelper


	def bootstrap_style
		@company_layout.try(:layout_style).present? ? @company_layout.layout_style : 'success'
		# @app.try(:company).try(:layout_style).present? ? @app.company.layout_style : 'success'
	end

	def layout_skin
		@company_layout.try(:layout_skin).present? ? @company_layout.layout_skin : 'green'
		# @app.try(:company).try(:layout_skin).present? ? @app.company.layout_skin : 'green'
	end

	def logo_image 
		@company_layout.try(:logo_image).present? ? "image_tag @company_layout.logo_image" : "image_tag '/assets/admin/lumico_logo_5.png'"
		# @app.try(:company).try(:logo_image).present? ? "image_tag @app.company.logo_image" : "image_tag '/assets/admin/lumico_logo_5.png'"
	end

end

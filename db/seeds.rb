

# SEED DEFAULT COMPANY
Company.create(name: 'Example Company')

# SEED FOR OrderedViewField
['index', 'form'].each do |view|
	(Admin.models - ["ordered_view_field"]).each do |model|

		ovf = OrderedViewField.new
		ovf.name_of_model = model.classify
		ovf.name_of_view = view

		if view == 'form'
			model.classify.constantize.column_names.each do |field|
				unless field.include? "base_64" or field.include? "created_at" or field.include? "updated_at" or field == 'id'
					ovf.model_fields << field 
				end
			end

		else

			if model.classify == 'App'
				(ovf.model_fields << ['name', 'company_id', 'menu_banner_image', 'menu_icon_image', 'menu_footer_image']).flatten!
										
			elsif model.classify == 'Page'
				(ovf.model_fields << ['title',  'body','published','image']).flatten!
										
			elsif model.classify == 'Article'
				(ovf.model_fields << ['title',  'teaser','published','image']).flatten!
										
			elsif model.classify == 'User'
				(ovf.model_fields << ['full_name', 'email', 'role']).flatten!
										
			elsif model.classify == 'Company'
				(ovf.model_fields << ['name']).flatten!
										
			elsif model.classify == 'Competition'
				(ovf.model_fields << ['name',  'question', 'closing_date', 'published', 'image']).flatten!
													
			elsif model.classify == 'Gallery'
				(ovf.model_fields << ['title',  'body', 'cover_image']).flatten!
										
			elsif model.classify == 'Schedule'
				(ovf.model_fields << ['title','venue','start_time','end_time','image']).flatten!			
													
			elsif model.classify == 'Map'
				(ovf.model_fields << ['title','kml','image']).flatten!
										
			elsif model.classify == 'Video'
				(ovf.model_fields << ['name', 'youtube_url','image']).flatten!
													
			elsif model.classify == 'UserFeedback'
				(ovf.model_fields << ['name','email','subject','message']).flatten!

			elsif model.classify == 'CompetitionEntry'
				(ovf.model_fields << 	["name", "answer", "phone", "email", "competition_id"]).flatten!
					
			else		
				model.classify.constantize.column_names.each do |field|

					unless field.include? "base_64" or field.include? "created_at" or field.include? "updated_at" or field == 'id'
					ovf.model_fields << field 
					end
				
				end

			end
		end

		ovf.save
	
	end
end

# == Schema Information
#
# Table name: articles
#
#  id            :integer          not null, primary key
#  title         :string
#  body          :text
#  image         :string
#  published     :boolean
#  app_id        :integer
#  image_caption :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  teaser        :text
#  image_base_64 :text
#  position      :integer
#

class Article < ActiveRecord::Base
	
	include Bootsy::Container
  belongs_to :app
  mount_uploader :image, ImageUploader

	scope :published, -> {where(published: true)}

 	validate :validate_images, on: [:create, :update] 

 	# DOING THIS ON A PER-MODEL BASIS IS DEFINITELY NOT THE WAY TO GO.
 	# TODO: Move below to uploader
	def validate_images
 		[['image', 200, 3000, 3, 2]] #[name, min_size, max_size, ratio_left, ratio_right]
 		 	.each do |im|
		 		unless (eval "#{im[0]}_cache").nil?
		 			errors.add im[0], "must be larger than #{im[1]}kB" unless (eval "#{im[0]}").validate_min_size(im[1])
		 			errors.add im[0], "must be smaller than #{im[2]}kB" unless (eval "#{im[0]}").validate_max_size(im[2])
		 			errors.add im[0], "aspect ratio must be approximately #{im[3]}:#{im[4]}" unless (eval "#{im[0]}").validate_aspect_ratio(im[3], im[4])
	 			end
 		end
 	end


end


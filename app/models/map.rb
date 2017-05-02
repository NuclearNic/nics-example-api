# == Schema Information
#
# Table name: maps
#
#  id            :integer          not null, primary key
#  title         :string
#  image         :string
#  kml           :string
#  app_id        :integer
#  created_at    :datetime
#  updated_at    :datetime
#  published     :boolean
#  image_base_64 :text
#

class Map < ActiveRecord::Base

	belongs_to :app
	scope :published, -> {where(published: true)}

end

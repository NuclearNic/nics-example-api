# == Schema Information
#
# Table name: competitions
#
#  id              :integer          not null, primary key
#  name            :string
#  app_id          :integer
#  competition_url :string
#  image           :string
#  question        :string
#  description     :text
#  closing_date    :datetime
#  published       :boolean
#  created_at      :datetime
#  updated_at      :datetime
#  image_base_64   :text
#

class Competition < ActiveRecord::Base

	belongs_to :app
 	mount_uploader :image, ImageUploader
	scope :published, -> {where(published: true)}

end

# == Schema Information
#
# Table name: videos
#
#  id            :integer          not null, primary key
#  name          :string
#  youtube_url   :string
#  image         :string
#  app_id        :integer
#  created_at    :datetime
#  updated_at    :datetime
#  image_base_64 :text
#  published     :boolean
#  position      :integer
#

class Video < ActiveRecord::Base

	belongs_to :app

  mount_uploader :image, ImageUploader
	scope :published, -> {where(published: true)}

end

# == Schema Information
#
# Table name: schedules
#
#  id            :integer          not null, primary key
#  title         :string
#  venue         :string
#  gps           :string
#  app_id        :integer
#  start_time    :datetime
#  end_time      :datetime
#  description   :text
#  image         :string
#  created_at    :datetime
#  updated_at    :datetime
#  image_base_64 :text
#  published     :boolean
#

class Schedule < ActiveRecord::Base

	belongs_to :app, dependent: :destroy
	mount_uploader :image, ImageUploader
	scope :published, -> {where(published: true)}

end

# == Schema Information
#
# Table name: pages
#
#  id              :integer          not null, primary key
#  title           :string
#  body            :text
#  image           :string
#  link_url        :string
#  show_in_menu    :boolean
#  layout_template :string
#  published       :boolean
#  app_id          :integer
#  created_at      :datetime
#  updated_at      :datetime
#  image_caption   :string
#  fa_icon         :string
#  position        :integer
#  image_base_64   :text
#

class Page < ActiveRecord::Base

  belongs_to :app
  mount_uploader :image, ImageUploader
	scope :published, -> {where(published: true)}


end

# == Schema Information
# == Schema Information
#
# Table name: apps
#
#  id                        :integer          not null, primary key
#  name                      :string
#  company_id                :integer
#  created_at                :datetime
#  updated_at                :datetime
#  menu_banner_image         :string
#  menu_icon_image           :string
#  menu_footer_image         :string
#  subtitle                  :string
#  email                     :string
#  telephone                 :string
#  address                   :string
#  title                     :string
#  live_view                 :string
#  menu_banner_image_base_64 :text
#  menu_icon_image_base_64   :text
#  menu_footer_image_base_64 :text
#

class App < ActiveRecord::Base

  belongs_to :company

  has_many :pages
  has_many :videos
  has_many :articles
  has_many :schedules
  has_many :competitions
  has_many :maps

  mount_uploader :menu_banner_image, ImageUploader
  mount_uploader :menu_icon_image, ImageUploader
  mount_uploader :menu_footer_image, ImageUploader

  validates_presence_of :company  
 

end

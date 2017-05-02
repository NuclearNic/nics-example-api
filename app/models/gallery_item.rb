# == Schema Information
#
# Table name: gallery_items
#
#  id         :integer          not null, primary key
#  title      :string
#  image      :string
#  body       :text
#  gallery_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class GalleryItem < ActiveRecord::Base


end

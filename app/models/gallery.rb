# == Schema Information
#
# Table name: galleries
#
#  id          :integer          not null, primary key
#  title       :string
#  body        :text
#  app_id      :integer
#  cover_image :string
#  created_at  :datetime
#  updated_at  :datetime
#

class Gallery < ActiveRecord::Base


end

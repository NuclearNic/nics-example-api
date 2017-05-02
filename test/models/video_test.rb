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

require 'test_helper'

class VideoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

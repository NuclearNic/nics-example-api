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

require 'test_helper'

class MapTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

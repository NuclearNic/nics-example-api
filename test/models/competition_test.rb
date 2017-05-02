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

require 'test_helper'

class CompetitionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: user_feedbacks
#
#  id         :integer          not null, primary key
#  app_id     :integer
#  name       :string
#  email      :string
#  subject    :string
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UserFeedbackTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: user_notes
#
#  id         :integer          not null, primary key
#  note       :text
#  user_id    :integer
#  date       :datetime
#  completed  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UserNoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

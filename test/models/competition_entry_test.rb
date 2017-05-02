# == Schema Information
#
# Table name: competition_entries
#
#  id             :integer          not null, primary key
#  name           :string
#  answer         :string
#  phone          :string
#  email          :string
#  competition_id :integer
#  created_at     :datetime
#  updated_at     :datetime
#

require 'test_helper'

class CompetitionEntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: ordered_view_fields
#
#  id            :integer          not null, primary key
#  name_of_model :string
#  name_of_view  :string
#  model_fields  :text             default([])
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class OrderedViewFieldTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

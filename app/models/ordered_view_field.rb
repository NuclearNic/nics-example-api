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

class OrderedViewField < ActiveRecord::Base

  serialize :model_fields, Array

end

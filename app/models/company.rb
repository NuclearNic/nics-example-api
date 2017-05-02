# == Schema Information
#
# Table name: companies
#
#  id           :integer          not null, primary key
#  name         :string
#  created_at   :datetime
#  updated_at   :datetime
#  logo_image   :string
#  layout_skin  :string
#  layout_style :string
#

class Company < ActiveRecord::Base
  has_many :apps
  mount_uploader :logo_image, ImageUploader

  validates_presence_of :name  

  def self.layout_skin_options
    ['blue','blue-light','yellow','yellow-light','green','green-light','purple','purple-light','red','red-light','black','black-light' ]
  end
  def self.layout_style_options
  	['default','primary','success','info','warning','danger']
  end
  # I'm slightly miffed that this has to (does it?) go below these class methods:
  validates :layout_style, inclusion: {in: layout_style_options}, :allow_nil => true
  validates :layout_skin, inclusion: {in: layout_skin_options}, :allow_nil => true

end

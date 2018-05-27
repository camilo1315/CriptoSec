# == Schema Information
#
# Table name: images
#
#  id                      :integer          not null, primary key
#  name                    :string
#  imageable_type          :string
#  imageable_id            :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  this_image_file_name    :string
#  this_image_content_type :string
#  this_image_file_size    :integer
#  this_image_updated_at   :datetime
#

class ImageSerializer < ApplicationSerializer
  attributes :id, :this_image
end

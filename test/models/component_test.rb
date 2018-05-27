# == Schema Information
#
# Table name: components
#
#  id                    :integer          not null, primary key
#  type_component        :string
#  price_component       :float
#  description_component :string
#  brand_component       :string
#  sizes_component       :float
#  material_component    :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'test_helper'

class ComponentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

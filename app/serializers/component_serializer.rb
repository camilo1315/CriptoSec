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

class ComponentSerializer < ApplicationSerializer
  attributes :id, :type_component, :price_component, :description_component, :brand_component, :sizes_component, :material_component
end

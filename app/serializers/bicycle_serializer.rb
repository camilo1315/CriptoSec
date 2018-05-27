# == Schema Information
#
# Table name: bicycles
#
#  id               :integer          not null, primary key
#  id_bicy          :integer
#  brand_bicy       :string
#  material_bicy    :string
#  components_bicy  :string
#  price_bicy       :float
#  usetype_bicy     :string
#  description_bicy :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  store_id         :integer
#

class BicycleSerializer < ApplicationSerializer
  attributes :id , :brand_bicy , :material_bicy , :components_bicy , :price_bicy , :usetype_bicy , :description_bicy


end

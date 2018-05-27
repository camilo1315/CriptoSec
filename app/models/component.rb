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

class Component < ApplicationRecord
    validates :type_component, presence: true,length: { maximum: 20 }
    validates :price_component, presence: true , numericality: true
    validates :description_component, presence: true,length: { maximum: 50 }
    validates :brand_component, presence: true,length: { maximum: 20 }
    validates :sizes_component, presence: true, numericality: true,length: { maximum: 20 }
    validates :material_component, presence: true,length: { maximum: 20 }

    belongs_to :store
    has_many :images, as: :imageable , dependent: :destroy

    #scope :baratos, lambda { |price_component| where("price_component < ?", price_component) }
    scope :baratos, lambda { |price_component| where("price_component < ?", price_component) }
end

# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  idcity     :integer
#  name_city  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class City < ApplicationRecord
    validates :idcity , presence: true, numericality: { only_integer: true },length: { maximum: 50 }
    validates :name_city ,presence: true
    #relations
    has_many :users
    has_many :stores

    #scope :capital, where(:name_city => "bogota")
    scope :capital, -> { where(:name_city => "bogota")}

end

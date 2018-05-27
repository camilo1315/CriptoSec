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

class CitySerializer < ActiveModel::Serializer
  attributes :id ,:idcity , :name_city
end

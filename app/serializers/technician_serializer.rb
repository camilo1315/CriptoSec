# == Schema Information
#
# Table name: technicians
#
#  id                     :integer          not null, primary key
#  id_technical           :integer
#  NameTec                :string
#  SurnameTec             :string
#  typeworktec            :string
#  costhourtec            :float
#  phonenumtec            :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  authentication_token   :string(30)
#

class TechnicianSerializer < ApplicationSerializer
  attributes :id , :id_technical, :NameTec, :SurnameTec, :typeworktec, :costhourtec, :phonenumtec, :email
end

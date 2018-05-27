# == Schema Information
#
# Table name: stores
#
#  id                     :integer          not null, primary key
#  id_store               :integer
#  name_store             :string
#  address_store          :string
#  score_store            :integer
#  phonenum_store         :integer
#  celphone_store         :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  authentication_token   :string(30)
#  city_id                :integer
#

require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

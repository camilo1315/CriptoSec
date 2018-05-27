# == Schema Information
#
# Table name: forums
#
#  id         :integer          not null, primary key
#  topic      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Forum < ApplicationRecord
    validates :topic , presence: true,length: { maximum: 50 }

    belongs_to :user
    has_many :comments, dependent: :destroy

    scope :carreras, -> { where(:topic => "carreras")}
end

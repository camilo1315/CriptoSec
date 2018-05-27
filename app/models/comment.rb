# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  forum_id    :integer
#  user_id     :integer
#

class Comment < ApplicationRecord
    validates :description , presence: true
    belongs_to :user
    belongs_to :forum

    scope :seguridad, -> { where(:description => "cascos")}
end

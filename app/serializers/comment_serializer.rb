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

class CommentSerializer < ApplicationSerializer
  attributes :id , :description , :forum_id, :user_id
end

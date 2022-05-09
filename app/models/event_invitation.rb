# == Schema Information
#
# Table name: event_invitations
#
#  id               :bigint           not null, primary key
#  invited_user_id  :integer
#  invited_event_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class EventInvitation < ApplicationRecord
  belongs_to :invited_user, class_name: 'User'
  belongs_to :invited_event, class_name: 'Event'
end

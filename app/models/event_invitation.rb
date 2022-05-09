# == Schema Information
#
# Table name: event_invitations
#
#  id               :bigint           not null, primary key
#  user_invited_id  :integer
#  invited_event_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class EventInvitation < ApplicationRecord
  belongs_to :user_invited, class_name: 'User'
  belongs_t :invited_event, class: 'Event'
end

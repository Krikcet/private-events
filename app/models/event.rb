# == Schema Information
#
# Table name: events
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  date       :date
#  location   :string
#  creator_id :integer
#  title      :string
#
class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :event_attendings, foreign_key: :attended_event_id, dependent: :destroy
  has_many :attendees, class_name: 'User', through: :event_attendings, source: :event_attendee, dependent: :destroy
  has_many :event_invitations, foreign_key: :invited_event_id, dependent: :destroy
  has_many :user_inviteds, through: :event_invitations, dependent: :destroy

  scope :past, -> { where('date < ?', Date.today) }
  scope :upcoming, -> { where('date >= ?', Date.today) }
end

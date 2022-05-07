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
  has_many :event_attendings, foreign_key: :attended_event_id
  has_many :attendees, class_name: 'User', through: :event_attendings, source: :event_attendee
end
